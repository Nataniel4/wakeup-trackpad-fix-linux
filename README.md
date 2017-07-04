# Wakeup trackpad fix
Fix trackpad not working after suspend on notebooks, netbooks, etc.

### Installation

```bash
sudo cp 0000trackpad /etc/pm/sleep.d/0000trackpad
sudo chmod +x /etc/pm/sleep.d/0000trackpad
```