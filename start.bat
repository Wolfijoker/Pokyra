@echo off
title Pixelmon 1.21.1 Local Server

:: Make sure you have downloaded the Arclight server jar and named it arclight.jar
:: Require Java 21 for Minecraft 1.21.1
echo Starting Arclight 1.21.1 NeoForge Server...

:: You can configure your RAM here. Using 8GB for local testing.
java -Xms4G -Xmx8G -jar arclight-neoforge-1.21.1-1.0.2-SNAPSHOT-9c004d4.jar nogui

pause
