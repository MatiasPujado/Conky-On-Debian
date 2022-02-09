# Conky on Debian <img align="right" width="100" height="100" src="/img/Linux-600x600.svg" >

![platform](https://img.shields.io/badge/platform-GNU%2FLinux-pink)
![distro](https://img.shields.io/badge/distro-Debian-red)
![conky](https://img.shields.io/badge/conky-1.11-success)
![gnome](https://img.shields.io/badge/gnome-3.38-informational)
![last-commit](https://img.shields.io/github/last-commit/MatiasPujado/Conky-On-Debian)
![repo-size](https://img.shields.io/github/repo-size/MatiasPujado/Conky-On-Debian)
![stars](https://img.shields.io/github/stars/MatiasPujado/Conky-On-Debian?style=social)
![forks](https://img.shields.io/github/forks/MatiasPujado/Conky-On-Debian?style=social)

---

This is the [conky](https://github.com/brndnmtthws/conky) configuration I developed for my GNU/Linux system. :computer:

> **My current setup is:**
>
> - OS: Debian GNU/Linux 11 (bullseye) x86_64
> - Kernel: 5.15.21-xanmod1
> - DE: GNOME 3.38.6
> - WM Theme: Kripton-v40
> - Theme: Kripton-v40 [GTK2/3](https://www.gnome-look.org/p/1365372)
> - Icons: Flat-Remix-Teal-Dark [GTK2/3](https://drasite.com/flat-remix)
> - Cursor: LyraX [cursor](https://www.gnome-look.org/p/1505683/)
> - Wireless Headset Logitech G533

<img align="center" src="/img/conkyrc_fullscreen.svg" >

## Table of content

- [Conky on Debian](#conky-on-debian)
  - [Compatibility:](#compatibility)
  - [Dependencies](#dependencies)
  - [Installation:](#installation)
  - [Configuration:](#configuration)
  - [Screen captures:](#screen-captures)
    - [`.conkyrc_time-hs`](#conkyrc_time-hs)
    - [`.conkyrc_pcstatus`](#conkyrc_pcstatus)

---

## Compatibility:

The latest version of this theme is on the master branch, and it supports conky `1.11.x` and GNOME `3.38.x`.

---

## Dependencies

- Download and install [headsetcontrol](https://github.com/Sapd/HeadsetControl).
- [Nerd Fonts](https://www.nerdfonts.com/)

  ```shell
  > sudo aptitude install conky-all curl net-tools lm-sensors hddtemp git
  ```

---

## Installation:

- Manually download the repo and place the files in their respective directories or you can use the following commands:

  ```shell
  > mkdir ~/.config/conky
  > mkdir ~/tmp && cd ~/tmp
  > git clone https://github.com/MatiasPujado/Conky-On-Debian.git
  > cd Conky-On-Debian/scripts/
  > cp .* *.bash ~/.confing/conky
  > cp *.desktop ~/.config/autostart
  ```

> **Notes:**
>
> - I have used 'B612' and '3270Narrow Nerd Font'. Feel free to change them for fonts of your liking.
> - To update the font list: `> fc-cache -f -v`

---

## Configuration:

- `.conkyrc_pcstatus`: You will have to take a look at the Hard Drives/Partitions section and add or remove lines according to your needs.

- `.conkyrc_time-hs`: If you do not own a compatible device with **Headsetcontrol**, feel free to delete the last line from `conky.text` module.

```lua
 > ${alignc}${voffset 6}${execp $HOME/.config/conky/hs_battery-status.bash}
```

> **NOTE:**
>
> - Replace `enp4s0` string for the name of your Ethernet connection.
> - Use the following command to find out:

```shell
> ip a
```

Hope you enjoy it. :smile:

---

## Screen captures:

### `.conkyrc_time-hs`

> The battery will change its color as its being used:
>
> - 100% --> `Dark Green`
> - From 99% to 60% --> `Green`
> - From 59% to 40% --> `Yellow`
> - From 39% to 20% --> `Red`
>
> Will also change when the device is being charged and when it is turned OFF.

![Conky](/img/conkyrc_time-hs_OFF.png?raw=true 'Headset turned OFF')
![Conky](/img/conkyrc_time-hs_green.png?raw=true 'Headset with battery between 99% and 60%')
![Conky](/img/conkyrc_time-hs_yellow.png?raw=true 'Headset with battery between 59% and 40%')
![Conky](/img/conkyrc_time-hs_orange.png?raw=true 'Headset with battery between 39% and 20%')
![Conky](/img/conkyrc_time-hs_red.png?raw=true 'Headset with battery between 19% and 0%')
![Conky](/img/conkyrc_time-hs_charging.png?raw=true 'Headset being charged')

### `.conkyrc_pcstatus`

> The ethernet socket icon will change its color depending on the user's connection status.

![Conky](/img/conkyrc_pcstats-netON.png?raw=true 'Top-right conky with Internet connection ON')
![Conky](/img/conkyrc_pcstats-netOFF.png?raw=true 'Top-right conky with Internet connection OFF')

[Back to the top ⬆](#table-of-content)
