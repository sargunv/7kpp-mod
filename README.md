# 7kpp-mod

A repository of mods and fixes for 7KPP.

## Installation

1. Download the latest release from the releases page (TODO) and ensure you have a matching version of 7KPP.
2. Select which mods you want to install:
   - `zz_fixscreens` fixes some buggy menus, especially for gamepad/controller input
   - `zz_statnotify` shows a notification when a stat is changed
3. Copy the .rpy and .rpyc files for the chosen mods into the game's "game" directory.
   - on macOS, this is inside the 7KPP.app bundle at "Contents/Resources/autorun/game"
   - on Linux or Windows, this is in the game directory of your install

## Development

Only tested on macOS.

### Pre-requisites

- [Ren'Py SDK 7](https://www.renpy.org/latest-7.html)
- A copy of [7KPP.app](https://azalynestudios.itch.io/seven-kingdoms-the-princess-problem) EA v1.11 for macOS
- Make (`brew install make`)
- Python 3 (`brew install python3`) (to run rpatool)

### Workflow

1. [Download renpy-7.7.3-sdk](https://www.renpy.org/latest-7.html) into the root of this repository
2. [Download 7KPP.app](https://azalynestudios.itch.io/seven-kingdoms-the-princess-problem) into the "original" directory of this repository
3. Run `make initialize` to extract the project
4. Modify .rpy scripts in the project directory
5. Run `make run` to test the game
6. Run `make patches` to save your script changes in non-gitignored files
7. Run `make dist` to create mod files that can be installed into a preexisting install of the game
