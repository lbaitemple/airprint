# airprint
Instruction is at http://linuxwin.com/cups-airprint-on-raspberry-pi/

After you install airpring, you need to add app.sh in the /home/pi directory
```
  chmod +x app.sh
  sudo crontab -e
```
append the following file in the crontab file
```
*/2 * * * * /home/pi/app.sh >/dev/null 2>&1
```
