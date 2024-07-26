# 7kpp-mod

A repository of mods and fixes for 7KPP.

## Installation

1. Download the latest release from the releases page (TODO) and ensure you have a matching version of 7KPP.
2. Select which mods you want to install:
   - `zz_fixscreens` fixes some buggy menus, especially for gamepad/controller input
   - `zz_statnotify` shows a notification when a stat is changed
   - `zz_quickchoice` adds numeric keyboard shortcuts to the choice menu, and displays the last line of text along with the menu
3. Copy the .rpy and .rpyc files for the chosen mods into the game's "game" directory.
   - on macOS, this is inside the 7KPP.app bundle at "Contents/Resources/autorun/game"
   - on Linux or Windows, this is in the game directory of your install

## Development

Only tested on macOS. Should be adaptable to other platforms with minor changes.

### Pre-requisites

- [Ren'Py SDK 7.0.0][sdk]
- A copy of [7KPP.app][7kpp] EA v1.11 for macOS
- Make (`brew install make`)
- Python 3 (`brew install python3`) (to run rpatool)

### Workflow

1. [Download renpy-7.0.0-sdk][sdk] into the root of this repository
2. [Download 7KPP.app][7kpp] into the "original" directory of this repository
3. Run `make initialize` to extract the project
4. Modify .rpy scripts in the project directory
5. Run `make run` to test the game
6. Run `make patches` to save your script changes in non-gitignored files
7. Run `make dist` to create mod files that can be installed into a preexisting install of the game

[sdk]: https://www.renpy.org/release/7.0
[7kpp]: https://azalynestudios.itch.io/seven-kingdoms-the-princess-problem
