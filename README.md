# SWG D20 RP Total Conversion - SWGEmu Core3

## What is the D20 RP Total Conversion?

Created by Borrie BoBaka
Originally used to host Dark Rebellion

Created and launched in Feburaury 2022, Dark Rebellion, using a custom D20 ruleset to create the ultimate roleplaying experience on Star Wars Galaxies. 
This conversion allows you to build and launch your own D20 Roleplaying server.

## Considerations
Please note that if you use this code to host a server, I ask that you do not name the server "Dark Rebellion" even if you choose to continue the stories that started on the server. 

## Notes to setup
1. Check the scripts "BorChat.h" and "PlayerCreationManager.cpp" for text instances of "Dark Rebellion" as part of the getChatRoomByFullPath. Change "Dark Rebellion" to the name of your server. Otherwise, things may crash.
2. Ensure you have created a chat channel called "global" - not doing so will cause the server to crash upon sending chat messages. These are used by the Discord Bot.
3. This server is using older code of SWGEmu circa 2021, and may require an older version of Engine3. The original server was managed using the ModTheGalaxy (MTG) VM provided by Lasko.

## Discord Bot
Included with this release is the Discord bot that was used in tandem with the server. It emits all spatial chat into a roleplay channel for the community to monitor.
This bot is based on the bot created by Progor for Relics of Corbantis, with some modifications to allow for modern Discord interactivity and additional channels. 

## TRE Files & Launcher
You can find a universal version of the launcher, and the server's TRE Files in the Resources section of ModTheGalaxy.com

## How to Build (SWGEmu Instructions)

### Dependencies

  * CMake 3.1.0 or higher
  * BerkeleyDB 5.3
  * MySQL Client and Server
  * OpenSSL libraries
  * pthreads
  * Lua 5.3 libraries
  * Zlib libraries
  * g++ 5.4+ or compatible
  * engine3
  * java jre 1.7+

### Build

  * Install dependencies (Debian 9+ or Ubuntu 16.04+)

        sudo apt install build-essential libmysqlclient-dev liblua5.3-dev libdb5.3-dev libssl-dev cmake git default-jre

  * Install dependencies (RHEL/CentOS 8+ or Fedora 28+)

        sudo dnf install automake cmake git gcc gcc-c++ java-1.8.0-openjdk-headless libatomic libdb-devel lua-devel make mariadb-devel openssl-devel

  * Clone core3 repository somewhere  (~/git)

        mkdir -p ~/git
        cd ~/git
        git clone http://review.swgemu.com/Core3
  * Build Core3 with 8 threads

        cd MMOCoreORB
        make -j8
  * Import sql database

        mysql -h<MYSQLHOST> -u<MYSQLUSER> -p<MYSQLPASSWORD> < sql/swgemu.sql

## How to Run

    cd ~/git/Core3/MMOCoreORB/bin
    ./core3

## License

    Copyright (C) 2019 SWGEmu

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by the Free Software Foundation,
    either version 3 of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License along with this program.
    If not, see <http://www.gnu.org/licenses/>.

For more information, see https://review.swgemu.com.

For more information about mods and this server, check https://www.modthegalaxy.com.