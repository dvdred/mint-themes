# Screenshot
![screenshot.png](./screenshot.png)

# Prerequisites
The ```conky``` software is *required* and ```conky-manager``` is optional but useful to run the dual panel included in this theme.
At this time i can't find a trusted ppa on Ubuntu 20.03 for *conky-manager*

# Install the theme:
```$ cd /tmp; git clone https://github.com/dvdred/mint-themes.git; rsync -avhP ../CyanNet ~/.conky/CyanNet```

## Only for the "conky_netmap" you need:

```
sudo apt install -y fping nmap sockstat
wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py && chmod +x speedtest-cli && sudo mv speedtest-cli /bin/
MY_USER=$(whoami) && echo '# Permission to socket stats' > /tmp/conky_cyan; echo "$MY_USER ALL=NOPASSWD: /usr/bin/sockstat" >> /tmp/conky_cyan;
sudo chown root. /tmp/conky_cyan; sudo mv /tmp/conky_cyan /etc/sudoers.d/
```

# Customization
DEFAULTS values in the configuration file ```conky_cyan```
- ```template1``` ("wlp3s0") name of local network interfaces, useful when it is not active (can't be autodiscovered)
- ```template2``` ("/DATA") First custom folder to watch other than root
- ```template3``` ("/Share") Second custom folder to watch other than root
- ```template4``` (Dynamic) used where is possible: autodiscovered active network interface

DEFAULTS values in the configuration file ```conky_net```

```
### LowRefreshRate (default 2 hours)
template1 7200
### MediumRefreshRate (default 10 min)
template2 600
### HighRefreshRate (default 3 min)
template3 180
```

# Autostart script
Due to the lack of Conky Manager, there is an autostart script ```conky-startup.sh``` that can be included in the start application menu of Ubuntu/Mint

# Fix and Feature

- Fixed syntax for conky version released with Linux Mint 20 / Ubuntu 20.04
- Fixed CPU temperature bug

## Many Thanks to the author of the original theme (Green Apple Desktop). You can include my fixes if you wish.
