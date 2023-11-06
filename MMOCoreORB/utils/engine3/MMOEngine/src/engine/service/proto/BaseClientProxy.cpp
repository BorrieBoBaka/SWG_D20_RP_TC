/*
** Copyright (C) 2007-2019 SWGEmu
** See file COPYING for copying conditions.
*/

#include "events/BaseClientNetStatusCheckupEvent.h"
#include "events/BaseClientEvent.h"

#include "BaseClientProxy.h"

BaseClientProxy::BaseClientProxy() : BaseClient() {
	bufferedPacket = nullptr;
	receiveBuffer.setInsertPlan(SortedVector<BasePacket*>::NO_DUPLICATE);
}

BaseClientProxy::BaseClientProxy(Socket* sock, SocketAddress& addr) : BaseClient(sock, addr) {
	bufferedPacket = nullptr;
	receiveBuffer.setInsertPlan(SortedVector<BasePacket*>::NO_DUPLICATE);

	//setLockName("ClientProxy " + ip);
   	//setMutexLogging(false);

   	//setFileLogger("log/" + addr.getFullPrintableIPAddress());
}

bool BaseClient::updateNetStatus(uint16 recievedTick) {
	lock();

	try {
		if (!isAvailable()) {
			unlock();
			return false;
		}

		uint16 hostByte = htons(recievedTick);

		if (lastRecievedNetStatusTick != 0) {
			uint16 clientDelta = hostByte - lastRecievedNetStatusTick;
			uint16 serverDelta = lastNetStatusTimeStamp.miliDifference();

			/*StringBuffer msg;
			msg << "recievedTick: " << hostByte << " clientDelta:" << clientDelta << " serverDelta:" << serverDelta;
			debug(msg, true);*/
			/*
						if (clientDelta > serverDelta) {
							uint16 difference = clientDelta - serverDelta;

							if ((difference > 200) && (++erroneusTicks > 10)) {
								disconnect("client clock desync", false);

								unlock();

								return false;
							}
						} else
							erroneusTicks = 0;

							*/
		}

		lastNetStatusTimeStamp.updateToCurrentTime();
		lastRecievedNetStatusTick = hostByte;

#ifdef TRACE_CLIENTS
		debug("setting net status");
#endif

		netcheckupEvent->rescheduleInIoScheduler(NETSTATUSCHECKUP_TIMEOUT);
	} catch (Exception& e) {
		e.printStackTrace();
		disconnect("Exception on updateNetStatus()", false);
	} catch (...) {
		disconnect("unreported exception on updateNetStatus()", false);
	}

	unlock();

	return true;
}

void BaseClientProxy::init(DatagramServiceThread* serv) {
	crcSeed = System::random();

	//info("crc seed:0x" + String::hexvalueOf((int)crcSeed), true);

	serverSequence = 0;
   	clientSequence = 0;

   	disconnected = false;
   	clientDisconnected = false;

   	acknowledgedServerSequence = -1;
	realServerSequence = 0;
	resentPackets = 0;

	service = serv;

	checkupEvent = new BasePacketChekupEvent(this);
	netcheckupEvent = new BaseClientNetStatusCheckupEvent(this);

   	lastNetStatusTimeStamp.addMiliTime(NETSTATUSCHECKUP_TIMEOUT);
   	balancePacketCheckupTime();

	netcheckupEvent->schedule(NETSTATUSCHECKUP_TIMEOUT);

#ifdef LOCKFREE_BCLIENT_BUFFERS
	reentrantTask->scheduleInIoScheduler(10);
#endif
}
