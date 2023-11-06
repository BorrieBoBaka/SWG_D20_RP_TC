const Discord = require('discord.js');
const Intents = require('discord.js');
const SWG = require('./swgclient');
const config = require('./config');
SWG.login(config.SWG);

var client, server, notif, chat, spatial, dmchat, notifRole;
function discordBot() {
    //client = new Discord.Client();
	client = new Discord.Client({ws:{intents:Intents.ALL}});

    client.on('message', message => {
        if (message.content.startsWith('!server')) {
            message.reply(SWG.isConnected ? "The server is UP!" : "The server is DOWN :(");
        }
        if (message.content.startsWith('!fixchat')) {
            message.reply("rebooting chat bot");
            process.exit(0);
        }
        if (message.content.startsWith('!pausechat')) {
            message.reply(SWG.paused ? "unpausing" : "pausing");
            SWG.paused = !SWG.paused;
        }
        if (message.channel.name != config.Discord.ChatChannel) return;
        if (message.author.username == config.Discord.BotName) return;
        SWG.sendChat(message.cleanContent, server.members.get(message.author.id).displayName);
    });

    client.on('disconnect', event => {
        try {notif.send("RoC-Bot disconnected");}catch(ex){}
        client = server = notif = chat = spatial = notifRole = dmchat = null;
        console.log("Discord disconnect: " + JSON.stringify(event,null,2));
        setTimeout(discordBot, 1000);
    });

    client.login(config.Discord.BotToken)
        .then(t => {
            client.user.setPresence({ status: "online", game: {name: "Facilitating OOC Chat"}});
            server = client.guilds.find("name", config.Discord.ServerName);
            notif = server.channels.find("name", config.Discord.NotificationChannel);
            chat = server.channels.find("name", config.Discord.ChatChannel);
			spatial = server.channels.find("name", config.Discord.SpatialChannel);
            dmchat = server.channels.find("name", config.Discord.DMChannel)
            notifRole = server.roles.find("name", config.Discord.NotificationMentionRole);
        })
        .catch(reason => {
            console.log(reason);
            setTimeout(discordBot, 1000);
        });
}
discordBot();

SWG.serverDown = function() {
    if (notif) notif.send(notifRole + " server DOWN");
}

SWG.serverUp = function() {
    if (notif) notif.send(notifRole + " server UP!");
}

SWG.reconnected = function() {
    if (chat) notif.send("chat bot reconnected"); //Change notif to chat to switch it back to speaking in chat.
}

SWG.recvChat = function(message, player) {
    console.log("sending chat to discord " + player + ": " + message);
    if (chat) chat.send("**" + player + ":**  " + message);
    else console.log("discord disconnected");
}

SWG.recvSpatialChat = function(message, player) {
    console.log("sending chat to discord " + player + ": " + message);
	var dataArray = message.split("|");
	if(dataArray[0] == "") 
		dataArray[0] = "say";
	
	var messageContent = dataArray[1];
	var spatialMsg = "msg.";
	
	if(dataArray[0] == "DM") {
		spatialMsg = "**- "+player+" -**\n```ini\n[" + messageContent + "]\n```";
	} else if(dataArray[0] == "emote") {
		spatialMsg = "**" + player + " " + messageContent + "**";
	} else if(dataArray[0] == "whisper") {
		spatialMsg = "**" + player + " whispers something unintelligible.**";
	} else if(messageContent[0] !== '(') {
		spatialMsg = "**" + player + " " + dataArray[0] + "s,** \"" + messageContent + "\""; 
	} else {
		return;
	}
	
    if (spatial) spatial.send(spatialMsg);
    else console.log("discord disconnected");
}

SWG.recvTell = function(from, message) {
    console.log("received tell from: " + from + ": " + message);
    if (from != config.SWG.Character) SWG.sendTell(from, "OwO");
}

SWG.recvSystemMsg = function(message) {
	if(message.startsWith("who")) {
		const dataArray = message.split(":");
		var dataString = "DR: Players: " + dataArray[1] + " DMs: " + dataArray[2];
        //var dataString = "DR: Players: 420 DMs: 69";
		//notif.send("Players Online: " + dataArray[1] + " | DMs Online: " + dataArray[2]);
		client.user.setPresence({ status: "online", game: {name: dataString}});
	} else if(message.startsWith("lw")) {
        const dataArray = message.split(":");
        var dmName = dataArray[1].substring(17, dataArray[1].length - 3);
        var chatString = "**" + dmName + ":** " + dataArray[3];

        if (dmchat) dmchat.send(chatString);
        else console.log("discord disconnected");
    }
}

setInterval(() => SWG.sendTell(config.SWG.Character, "ping"), 30000);

setInterval(() => SWG.sendTell(config.SWG.Character, "getwho"), 3000);