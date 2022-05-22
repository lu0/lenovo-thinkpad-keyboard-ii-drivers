# Thinkpad Bluetooth Keyboard II - Driver patch for Linux 5.4

This repo contains my attempts to modify, compile and test
[a patch made by @ValdikSS](
https://lore.kernel.org/linux-input/20211017083246.977096-1-iam@valdikss.org.ru/T/
)
for the kernel module `hid-lenovo` to solve weird behaviors of the **Thinkpad
Bluetooth Keyboard II** in Linux kernel 5.4, compared to 5.18 (the kernel
version the patch is originally based upon), before migrating to 5.19 (not yet released).

The first version of the external Thinkpad Keyboard (Wired USB) works really
good on Linux, but the second version (Wireless USB/BT) doesn't work very well
on OS other than Windows. *Thanks* Lenovo...

I personally have noticed the following **unbearable annoyances** from day 1
using this keyboard on Linux:

- No horizontal scrolling
    - I really use it while coding, designing and drawing.

- Vertically scrolling with middle button + TrackPoint pastes whatever the
  clipboard is currently holding.

    - Scrolling through files of code is the most annoying thing, the keyboard
      is always pasting things and I find myself undoing those a lot, then
      falling back to mouse + scrollbar (eww!).

- Vertically scrolling triggers a left-click.
    - This causes me to click on things I don't intend to more often than I can handle.

- The toggle-mic-mute button does not work.
    - [A while ago I made a script for the wired version of the keyboard that
      works like a charm](https://gist.github.com/lu0/fd4a22d6869edab2592173f691043195)
      , but this simply won't work for the wireless version of the keyboard since the
      keystroke is not recognized neither by the X server nor at ACPI level.

There's a few more annoyances, although I can bear with those since I don't use
these features frequently:

- Buttons to toggle Bluetooth (F10) and Wifi (F8, notification center in
  *Winbloats*) do not work.
- Buttons *Tools* (F9), and *Favorites* (F12 ) do not work, but I don't use them
  at all.


My attempts are logged in shape of weird, maybe broken, commits. I won't even
clear the history at this point. I want to track my progress.

Will update this README once I solve most of the unbearable annoyances on kernel
5.4