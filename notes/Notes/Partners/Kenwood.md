## HALO

### Enable customer-mode

```shell
echo 13 > /data/boot.txt
sync
```

This should enable the Customer Mode and help to use the GUI options for your testing of the P&P flow.

### Turn off and on the esp32 (network card)

#### Turn it off

```shell
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ESP32 Power OFF
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ESP32 Power-OFF sequence
# 3v3 disable
echo 0 > /sys/class/gpio/gpio37/value
# Latch clock high
echo 1 > /sys/class/gpio/gpio36/value
sleep 0.5
# Latch clock low
echo 0 > /sys/class/gpio/gpio36/value
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

One-liner version:

`echo 0 > /sys/class/gpio/gpio37/value && echo 1 > /sys/class/gpio/gpio36/value && sleep 0.5 && echo 0 > /sys/class/gpio/gpio36/value`

#### Turn it on

```shell
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ESP32 Power ON
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ESP32 Power-ON sequence
# 3v3 enable
echo 1 > /sys/class/gpio/gpio37/value
# Latch clock high
echo 1 > /sys/class/gpio/gpio36/value
sleep 0.5
# Latch clock low
echo 0 > /sys/class/gpio/gpio36/value
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

One-liner version:

`echo 1 > /sys/class/gpio/gpio37/value && echo 1 > /sys/class/gpio/gpio36/value && sleep 0.5 && echo 0 > /sys/class/gpio/gpio36/value`
