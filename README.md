# airprint
Instruction is at http://linuxwin.com/cups-airprint-on-raspberry-pi/

After you install airprint, a common problem is the stalling issue. You will need to restart airprint server. Also, you can add app.sh in the /home/pi directory
```
  chmod +x app.sh
  sudo crontab -e
```
After that, you need to append the following file in the crontab file
```
*/2 * * * * /home/pi/app.sh >/dev/null 2>&1
```
For HP printer, you will need to do the following to install plugin 
```
 sudo hp-setup -i
 ```
Make sure you enable TCP&UDP port 631. Otherwise, airprint will not be able to find the printer.
