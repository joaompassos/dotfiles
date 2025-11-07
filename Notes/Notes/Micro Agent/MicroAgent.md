## Erase Flash:
```
/home/johnsteps/.espressif/python_env/idf5.1_py3.12_env/bin/python  $IDF_PATH/components/esptool_py/esptool/esptool.py  --chip esp32 \ 
   erase_flash
```
## Flash and Log
```
make esp32 && make flash-main && ESPPORT=/dev/ttyUSB0 make monitor-main | tee logs/WPA2-mixed-$(date +%Y-%m-%d-%H:%M).logs
```
## Provisioning Client
```

```