# Spawner Recovery

A Minecraft Java Edition datapack that allows players to recover and reuse mob spawners with Silk Touch while preserving the original mob type.

## ✨ Features

- ⛏️ Recover mob spawners using Silk Touch
- 🧟 Preserve the original mob type
- 🔄 Automatically restore the spawner when placed
- ♾️ Place multiple spawners without manually resetting anything
- 🧩 Generic system supporting different mobs
- 🪶 No mods required
- ⚙️ Uses Minecraft's native datapack system

## 🎯 How it works

When a player breaks a mob spawner with Silk Touch, the datapack stores the mob type inside the recovered spawner.

When the spawner is placed again:

1. The placement is detected.
2. A raycast searches for the newly placed spawner.
3. The stored mob type is read from `custom_data`.
4. `SpawnData` is restored.
5. `SpawnPotentials` is restored.
6. The spawner is ready to spawn the original mob again.

The system is completely generic and does not require a separate function for each mob.

## 🧪 Tested mobs

The datapack has currently been tested successfully with:

- 🔥 Blaze
- 💀 Skeleton
- 🧟 Zombie
- 🕷️ Spider

Other mobs using standard mob spawners should work with the same system.

## 📦 Installation

1. Download or clone this repository.
2. Place the datapack folder inside:

```text
.minecraft/saves/<your-world>/datapacks/
```

3. Start or reload the world.
4. Run:

```mcfunction
/reload
```

5. The datapack is ready to use.

## 🛠️ Usage

Obtain a mob spawner with Silk Touch.

Break the spawner normally with the Silk Touch tool.

Place the recovered spawner again.

The datapack automatically restores the original mob type.

No command is required between placements.

## 📁 Project Structure

```text
Spawner-Recovery/
└── data/
    └── spawner_recovery/
        ├── advancement/
        │   └── place_spawner.json
        │
        └── function/
            ├── load.mcfunction
            ├── place.mcfunction
            ├── raycast.mcfunction
            └── restore.mcfunction
```

## ⚙️ Technical Details

The datapack uses:

- `minecraft:custom_data`
- `SpawnData`
- `SpawnPotentials`
- Advancements
- Functions
- Scoreboards
- Raycasting

The mob identifier is read dynamically from:

```text
minecraft:custom_data.spawner_mob
```

This allows the same functions to handle different mob types without hardcoding individual mobs.

## 📋 Requirements

- Minecraft Java Edition
- Minecraft 26.2
- No mods required

## 🚧 Development Status

**Current status: Functional**

The core recovery and restoration system has been tested with multiple mob types and repeated spawner placement.

The project is currently being cleaned up and prepared for its first stable release.

## 📜 License

See the repository for licensing information.

## 👤 Author

Created by [CpyBad](https://github.com/CpyBad)
