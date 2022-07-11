# Screenshot
![screenshotsample.png](./screenshotsample.png)

# Prerequisites
The ```conky``` software is *required* and ```conky-manager``` is optional but useful to run the dual panel included in this theme, but at this time i can't find a trusted ppa on Ubuntu 20.04 for *conky-manager*

## Only for the "conky_netmap" panel you need:

```
sudo apt install -y fping nmap sockstat
wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py && chmod +x speedtest-cli && sudo mv speedtest-cli /bin/
MY_USER=$(whoami) && echo '# Permission to socket stats' > /tmp/conky_cyan; echo "$MY_USER ALL=NOPASSWD: /usr/bin/sockstat" >> /tmp/conky_cyan;
sudo chown root. /tmp/conky_cyan; sudo mv /tmp/conky_cyan /etc/sudoers.d/
```

# Install the theme:
```
$ git clone https://github.com/dvdred/mint-themes.git; cd mint-themes
$ rsync -avhP ConkyThemes/Ubuntu2004/CyanNet ~/.conky/CyanNet
```

# Customization 
To point the  right network interface to monitor you have to declare it in the configuration file, or accept the DEFAULTS VALUES, in the configuration file ```~/.conky/CyanNet/conky_cyan``` :
- ```template1``` ("wlp3s0") is the name of the local network interfaces to watch (can't be autodiscovered, if not active)
- ```template2``` ("/DATA") First custom folder to watch other than root
- ```template3``` ("/Share") Second custom folder to watch other than root
- ```template4``` (Dynamic) used where is possible: autodiscovered active network interface

You can also adjust polling timing for some checks, or accept the DEFAULTS VALUES in the configuration file ```~/.conky/CyanNet/conky_net```

```
### LowRefreshRate (default 2 hours)
template1 7200 # <------ speedtest check
### MediumRefreshRate (default 10 min)
template2 600 # <------ IP Online check
### HighRefreshRate (default 3 min)
template3 180 # <------ Listen Services check
```

# Auto/Start script
Due to the lack of Conky Manager, there is an autostart script ```conky-startup.sh``` that can be included in the start application menu of Ubuntu/Mint

## Run Once:
```$ cd ~/.conky/CyanNet; ./conky-startup.sh```

# Stop:
```$ killall conky```

### NOTES: 
## Thanks to the author of the original theme [Green Apple Desktop](https://github.com/blackPantherOS/Conky-themes/tree/master/Green%20Apple%20Desktop). You can include my fixes if you like.