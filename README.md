# 7kpp-mod

A repository of mods and fixes for 7KPP.

## Installation

Installation requires a copy of 7KPP. You can purchase it from [itch.io][7kpp].

1. Download the [latest release][latest] from the releases page and ensure you have a matching version of 7KPP.
2. Select which mods you want to install:
   - `zz_fixscreens` fixes some buggy menus, especially for gamepad/controller input
   - `zz_statnotify` shows a notification when a stat is changed, including skills, approval, and relationships
   - `zz_quickchoice` adds numeric keyboard shortcuts to the choice menu, and displays the last line of text along with the menu
3. Copy the .rpy and .rpyc files for the chosen mods into the game's "game" directory.
   - on macOS, this is inside the 7KPP.app bundle at "Contents/Resources/autorun/game"
   - on Linux or Windows, this is in the game directory of your install

## Features

### Stat change notificaations

- Displays a notification when a skill stat is changed.
- Displays a notification when an approval stat is changed.
- Displays a notification when a relationship stat is changed.

![Screenshot](https://github.com/user-attachments/assets/cc432669-253a-4d32-b4a6-b31dc7f9830e)

### Quick choices

- Displays the last line of text along with the choice menu.
- Adds numeric keyboard shortcuts to the choice menu when there are ten or fewer options.

![Screenshot](https://github.com/user-attachments/assets/44572ac0-f91a-464d-9c7f-2ba6f296d30f)

### Bug fixes

- Fix the main menu and your page menu to work properly with keyboard/controller input. The original game will skip certain options when cycling through them with arrow keys. This mod fixes that issue.
- Fix the quick menu's focus mask to not be so picky about where the mouse is. The original game requires the mouse to be exactly on the text of the option, which is difficult to do with a controller. This mod makes the focus mask more forgiving.

## Development

Only tested on macOS. Should be adaptable to other platforms with minor changes.

### Pre-requisites

- [Ren'Py SDK 7.4.11][sdk]
- A copy of [7KPP.app][7kpp] EA v1.12 for macOS
- Make (`brew install make`)
- Python 3 (`brew install python3`) (to run rpatool)

### Workflow

1. [Download renpy-7.4.11-sdk][sdk] into the root of this repository
2. [Download 7KPP.app][7kpp] into the "original" directory of this repository
3. Run `make initialize` to extract the project
4. Modify .rpy scripts in the project directory
5. Run `make run` to test the game
6. Run `make patches` to save your script changes in non-gitignored files
7. Run `make dist` to create mod files that can be installed into a preexisting install of the game

[latest]: https://github.com/sargunv/7kpp-mod/releases/latest
[sdk]: https://www.renpy.org/release/7.4.11
[7kpp]: https://azalynestudios.itch.io/seven-kingdoms-the-princess-problem
