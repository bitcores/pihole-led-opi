# pihole-led-opi
LED notification script for pihole on OrangePi devices

Based on the script from https://github.com/esnalabu/piholeblink this script is designed for OrangePi devices that have notification LEDs integrated. The script uses the red LED by default. It was tested and run on an OrangePi Zero running Armbian 5.83 Debian stretch 4.19.38. Older or newer versions may have different paths to the LEDs, so this should be checked.

Also included is a simple systemd script for running the blink script as a service.
