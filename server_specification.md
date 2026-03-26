# Pixelmon Server Specification (1.21.1 | NeoForge | Arclight)

## Overview
This specification is designed for a **high-capacity Pixelmon server** running on Minecraft 1.21.1. It utilizes **Arclight** as the hybrid server software, which allows you to run NeoForge mods (like Pixelmon and performance enhancers) alongside Bukkit/Spigot plugins (for administration, economy, and permissions).

## Hardware & System Requirements
- **RAM Allocation**: Minimum 12GB - 16GB dedicated to the server to handle a large player base and the heavy memory requirements of Pixelmon.
- **CPU**: A processor with high single-thread performance (e.g., modern AMD Ryzen 7/9 or Intel Core i7/i9).
- **Storage**: NVMe SSD is strictly recommended for rapid chunk loading and saving.

## Core Software
- **Minecraft Version**: 1.21.1
- **Server Software**: [Arclight](https://github.com/IzzelAliz/Arclight) (NeoForge 1.21.1 branch)
- **Modloader**: NeoForge

---

## 1. Required Mods (NeoForge 1.21.1)

### Pixelmon Core
- **Pixelmon Mod** (1.21.1 version)
- **Blaze Gaming Enhanced** (Client-side optimizations for Pixelmon)

### Performance & Optimization Mods (Crucial for high capacity)
To accommodate many players without severe tick lag, these server-side mods are essential:
- **FerriteCore**: Drastically reduces memory/RAM usage.
- **ModernFix**: Enhances startup times, minimizes memory footprint, and patches various game engine bugs.
- **Lithium**: Optimizes general gameplay AI and mob logic without altering vanilla mechanics.
- **Clumps**: Groups XP orbs together into a single entity to heavily reduce processing lag in crowded areas.
- **Let Me Despawn**: Fixes vanilla issues to allow mobs holding items to naturally despawn, freeing up the mob cap and reducing server load.
- **Noisium**: Optimizes terrain generation math heavily, leading to 20-30% faster new-chunk creation to prevent lag spikes during player exploration.
- **ServerCore**: Dynamically adjusts resource-intensive mechanics (like mob caps and chunk-tick distances) to protect server TPS when under heavy load.

---

## 2. Recommended Plugins (Spigot / Paper)

Arclight allows you to natively run plugins. These will manage your player experience, permissions, and ease server administration.

### Administration & Performance Profiling
- **Spark**: The ultimate server profiling tool. Use it to diagnose exactly what is causing lag (CPU, RAM, or specific plugins/mods).
- **ClearLagg**: Automatically clears dropped items on a schedule and sets entity limits per chunk.
- **Chunky**: **Must-use before public release.** Pre-generate your world chunks (e.g., a 10,000x10,000 border) so the server never has to generate new chunks when players explore. This eliminates the #1 cause of server TPS drops.

### Server Core & Permissions
- **LuckPerms**: The absolute standard for managing player ranks and permissions.
- **EssentialsX**: Provides core commands (`/spawn`, `/tpa`, `/home`, etc.).
- **EssentialsX Chat**: For managing chat formatting and prefixes/suffixes.
- **Vault**: The required API to tie economy plugins to permissions.
- **GriefPrevention** or **HuskyTowns**: To allow players to claim land and protect their Pixelmon machines without admin intervention.

---

## 3. Server Configuration & Tuning Tips

For a large public capacity server, the default settings will struggle. Make these adjustments:

**Pixelmon Config Tips:**
- **Max Battles**: Limit the simultaneous battles that can occur in a specific chunk.
- **Entity Limits**: Avoid reducing spawn rates inside Pixelmon configs directly, as it ruins the gameplay loop. Instead, rely on `ClearLagg` and `Adaptive Performance Tweaks`.

**Server.properties / Spigot.yml Tips:**
- Set `view-distance` to `6` or `8`. (Anything higher is catastrophic for large player counts).
- Set `simulation-distance` to `4` or `5`.
- Reduce `entity-tracking-range` in `spigot.yml` to prevent the server from processing entities that players can barely even see.

---

## Next Steps for the Project
1. Download the latest Arclight 1.21.1 server jar.
2. Run the server once to generate the `/mods/` and `/plugins/` folders.
3. Drop the listed jars into their respective folders.
4. Run an initial world pre-generation using **Chunky**.
