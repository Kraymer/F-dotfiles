**Custom config for my lenovo machine at work.**


<!--- Tree block injection -->
    ├── .Xmodmap
    └── .zsh
        └── linux.zsh

### Requirements

- Xmodmap

### Install

<details>
<summary>Apt install command</summary>
<p>

```sh
# gpaste
sudo add-apt-repository ppa:webupd8team/gnome3
sudo apt-get update
sudo apt-get install gnome-shell-extensions-gpaste
    
sudo apt install pinta solaar

sudo apt install gnome-tweaks
```

</p>
</details>  

- `gpaste`: clipboard management suite for GNOME
- `pinta` : open source program for drawing and image editing
- `solaar`: Linux Device Manager for Logitech Unifying Receivers and Devices
- `gnome-tweaks`: advanced touchpad configuration

### Note

Ubuntu 22.04 put you by default on the Wayland server, where Xmodmap (and others classical tools for Xorg) do not anymore work.
You can switch to Xorg again by logging out, then before entering your password, clicking the cog wheel to select the "Ubuntu on xorg" session. That choice is remembered until you change it again.
