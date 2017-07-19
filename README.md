# Wakeup Trackpad Fix
Fix trackpad not working after suspend/wakeup on notebooks, netbooks, etc.

### Installation (Method 1) [Using "0000trackpad" file]

#### Tested [OK] in Ubuntu 14.04
#### Tested [FAIL] in Ubuntu 16.04

```bash
sudo cp 0000trackpad /etc/pm/sleep.d/0000trackpad
```
If not working, try this command:

```bash
sudo chmod +x /etc/pm/sleep.d/0000trackpad
```

### Installation (Method 2) [Using "trackpad" file]

#### Tested [OK] in Ubuntu 16.04

```bash
sudo cp trackpad /lib/systemd/system-sleep/trackpad
```
If not working, try this command:

```bash
sudo chmod +x /lib/systemd/system-sleep/trackpad
```

