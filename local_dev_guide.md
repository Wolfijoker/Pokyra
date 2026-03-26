# Local Pixelmon Development Guide

Welcome to your local testing environment! 

You are currently working out of `C:\Users\lohan\.gemini\antigravity\scratch\pixelmon-server-1.21.1`. To actually start the server, you need to manually drop in the server executable and your mods.

## Next Steps to Launch

### 1. Download Arclight 1.21.1
- Since Arclight is heavily updated, downloading their 1.21.1 NeoForge server jar directly from their official site/GitHub ensures you have the latest stable patches. 
- Place the `.jar` file directly into this folder.
- Rename the jar file to `open_arclight_jar_here.jar` so the `start.bat` script can find it automatically.

### 2. Download Pixelmon & Mods
- Download the NeoForge 1.21.1 version of the Pixelmon Mod.
- Place it into the `mods` folder here.
- (Refer to `server_specification.md` to grab modern server-side performance mods like FerriteCore, ModernFix, and Clumps. Put them in the `mods` folder as well).

### 3. Download Plugins
- Grab your essential plugins (.jar format) you want to test (e.g., Spark, LuckPerms, Chunky).
- Place them into the `plugins` folder.

### 4. Start the Server
- Double-click `start.bat`.
- A command prompt will open, allocating 8GB of RAM to the server locally. Wait for the server console to display `Done`.
- Open Minecraft (1.21.1 NeoForge with Pixelmon installed on your client), go to Multiplayer, and add a server with the IP: `localhost` or `127.0.0.1`.

### 5. Config Editing
- As the server boots up, it will extract its configuration to the `config` folder. You can configure Pixelmon spawning rules, database setups, and more locally directly from your PC!
