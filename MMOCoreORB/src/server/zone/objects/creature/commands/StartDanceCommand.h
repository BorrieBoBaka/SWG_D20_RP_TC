/*
 				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#ifndef STARTDANCECOMMAND_H_
#define STARTDANCECOMMAND_H_

#include "server/zone/objects/player/sessions/EntertainingSession.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/skill/PerformanceManager.h"

class StartDanceCommand: public QueueCommand {

public:
	StartDanceCommand(const String& name, ZoneProcessServer* server) :
		QueueCommand(name, server) {

	}

	static void startDance(CreatureObject* creature, const String& dance,
			const String& animation) {
		ManagedReference<Facade*> facade = creature->getActiveSession(
				SessionFacadeType::ENTERTAINING);
		ManagedReference<EntertainingSession*> session =
				dynamic_cast<EntertainingSession*> (facade.get());

		if (session == nullptr) {
			session = new EntertainingSession(creature);
			creature->addActiveSession(SessionFacadeType::ENTERTAINING, session);
		}

		session->startDancing(dance, animation);
	}

	static void sendAvailableDances(CreatureObject* player, PlayerObject* ghost, uint32 suiType = SuiWindowType::DANCING_START) {
		ManagedReference<SuiListBox*> sui = new SuiListBox(player, suiType);
		sui->setPromptTitle("@performance:available_dances");
		sui->setPromptText("@performance:select_dance");

		/*
		const AbilityList* list = ghost->getAbilityList();

		for (int i = 0; i < list->size(); ++i) {
			const Ability* ability = list->get(i);

			String abilityName = ability->getAbilityName();

			if (abilityName.indexOf("startDance") != -1) {
				int args = abilityName.indexOf("+");

				if (args != -1) {
					String arg = abilityName.subString(args + 1);

					sui->addMenuItem(arg);
				}
			}
		} */

		sui->addMenuItem("basic");
		sui->addMenuItem("rhythmic");
		sui->addMenuItem("basic2");
		sui->addMenuItem("rhythmic2");
		sui->addMenuItem("footloose");
		sui->addMenuItem("formal");
		sui->addMenuItem("footloose2");
		sui->addMenuItem("formal2");
		sui->addMenuItem("popular");
		sui->addMenuItem("poplock");
		sui->addMenuItem("popular2");
		sui->addMenuItem("poplock2");
		sui->addMenuItem("lyrical");
		sui->addMenuItem("exotic");
		sui->addMenuItem("exotic2");
		sui->addMenuItem("lyrical2");
		sui->addMenuItem("exotic3");
		sui->addMenuItem("exotic4");
		sui->addMenuItem("theatrical");
		sui->addMenuItem("theatrical2");
		sui->addMenuItem("breakdance");
		sui->addMenuItem("breakdance2");
		sui->addMenuItem("tumble");
		sui->addMenuItem("tumble2");

		sui->addMenuItem("bunduki");
		sui->addMenuItem("bunduki2");
		sui->addMenuItem("peiyi");
		sui->addMenuItem("freestyle");
		sui->addMenuItem("freestyle2");
		sui->addMenuItem("jazzy");
		sui->addMenuItem("jazzy2");

		ghost->addSuiBox(sui);

		player->sendMessage(sui->generateMessage());

		return;
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target,
			const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		CreatureObject* player = cast<CreatureObject*> (creature);

		ManagedReference<Facade*> facade = creature->getActiveSession(
				SessionFacadeType::ENTERTAINING);
		ManagedReference<EntertainingSession*> session =
				dynamic_cast<EntertainingSession*> (facade.get());

		if (session != nullptr) {
			if (session->isPlayingMusic()) {
				session->stopPlayingMusic();
			}

			if (session->isDancing()) {
				creature->sendSystemMessage(
						"@performance:already_performing_self");

				return GENERALERROR;
			}
		}

		Reference<PlayerObject*> ghost =
				creature->getSlottedObject(
						"ghost").castTo<PlayerObject*> ();

		if (ghost == nullptr)
			return GENERALERROR;

		String args = arguments.toString();

		PerformanceManager* performanceManager =
				SkillManager::instance()->getPerformanceManager();

		if (args.length() < 2) {
			sendAvailableDances(player, ghost);
			return SUCCESS;
		}

		String fullString = String("startDance") + "+" + args;

		/*
		if (!ghost->hasAbility(fullString)) {
			creature->sendSystemMessage("@performance:dance_lack_skill_self");
			return GENERALERROR;
		} */

		if (!performanceManager->hasDanceAnimation(args)) {
			creature->sendSystemMessage("@performance:dance_lack_skill_self");
			return GENERALERROR;
		}

		startDance(creature, args, performanceManager->getDanceAnimation(args));

		return SUCCESS;
	}

};

#endif //STARTDANCECOMMAND_H_
