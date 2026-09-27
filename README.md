# Player Data Script

Retrieve and store player-specific data in FiveM.

## Features

- Retrieve player-specific data using a command
- Store player data in a MySQL database

## Requirements

- FiveM server with ESX Legacy
- MySQL database

## Installation

1. Download the script and place it in your FiveM server's resources folder.
2. Import the `database.sql` file into your MySQL database.
3. Add `start player-data-script` to your server.cfg file.

## Usage

- Players can use the `/fivemscript` command to retrieve their data.

## Configuration

The script can be configured in the `config.lua` file:

```lua
Config = {}

-- Database configuration
Config.Database = {
    TableName = 'fivemscript_data'
}

-- Script settings
Config.ScriptSettings = {
    EnableDebug = false,
    DefaultValue = 100
}
```

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=player-data-script&utm_content=bottom) — describe it in one sentence and get the full source code.
