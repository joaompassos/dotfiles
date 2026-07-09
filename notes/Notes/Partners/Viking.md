### Update the partner-agent

- Download the latest version
- Copy it to the Viking file system
- Make a backup of the current firmware
```shell
cp /opt/virtuoso /home/root/virtuoso_ui_v0.3.5
```
- Make sure the `r485d` and the `virtuoso` binaries are executable
- Stop virtuoso services
```shell
systemctl stop virtuoso-ui virtuoso-r485d
```
- Put all the binaries into the `/opt/virtuoso/` directory
- Start virtuoso services again
```shell
systemctl start virtuoso-ui virtuoso-r485d
```
- Check the partner-agent version

### Get the partner-agent version

```shell
/opt/virtuoso/virtuoso --version -platform eglfs
```

### Update the EOC

- EOC6 is for single
- EOC8 is the double

Place one of the files on a usb stick (no other files can be present) and plug into the side of the unit with no power (usually using a breaker). Once power is restored, it will read the usb stick and update taking less than 30 or so seconds.  For good measure, you should wait a couple of minutes before removing the usb. Unfortunately, you will have to remove it partially from the cabinet to access the USB slot on the side. Be sure to verify the software version on the UI before reinstalling.
