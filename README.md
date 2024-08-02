# LGTV MacOS Companion
## Description
A macOS app to sync the power state of an LG WebOS TV with your Mac.

Inspired by the amazing [LGTVCompanion](https://github.com/JPersson77/LGTVCompanion) by JPersson77

And thank you to [LGTVLinuxCompanion](https://github.com/cali-95/LGTVLinuxCompanion) by cali-95, because Python is a lot easier to read than C++

This is an early beta, use at your own risk.

Written in Swift with SwiftUI and AppKit

## Features
### In progress:
#### Basic Features:
- [ ] Scan the network to detect webOS TVs
- [x] Detect system sleep
- [x] Detect system wake
- [ ] Detect system restart - *in progress*
- [ ] Detect system power down - *in progress*
- [ ] Set the LG TV to the appropriate power state
- [ ] Set the LG TV to the appropriate HDMI input
- [ ] Set the HDMI input icon to 'PC' (allegedly helps with latency and processing on some versions of WebOS)
#### MacBook specific features:
Both of these make sure your LG TV won't turn on and off every time you open or close your laptop if it's not plugged into the display/dock
- [ ] Have the app work conditionally based on plugged in USB Devices
- [ ] Have the app work conditionally based on plugged in displays

## Special thanks to:
[LGTVCompanion](https://github.com/JPersson77/LGTVCompanion) by JPersson77

[LGTVLinuxCompanion](https://github.com/cali-95/LGTVLinuxCompanion) by cali-95

Paul Hudson at [HackingWithSwift.com](HackingWithSwift.com)
