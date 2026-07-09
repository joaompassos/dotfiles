# How-to

## Upgrade GO version

First, check the go version is running in the system

```shell
$ go version
go version go1.24.1 linux/amd64
```

Then download and install the new version of go:

```bash
wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.24.2.linux-amd64.tar.gz go/
```

Then check go has been updated:

check the go version is running in the system

```shell
$ go version
go version go1.24.2 linux/amd64
```

## RAUC

### Get the current slot status

```shell
# rauc status 
=== System Info ===
Compatible:  mlui-viking
Variant:     
Booted from: emmc-kernel.0 (A)

=== Bootloader ===
Activated: emmc-kernel.0 (A)

=== Slot States ===
o [emmc-kernel.1] (/dev/mmcblk2p3, ext4, inactive)
	bootname: B
	boot status: good
    [emmc-rootfs.1] (/dev/mmcblk2p6, ext4, inactive)

x [emmc-kernel.0] (/dev/mmcblk2p2, ext4, booted)
	bootname: A
	boot status: good
    [emmc-rootfs.0] (/dev/mmcblk2p5, ext4, active)
```

### Manually rollback

```shell
# rauc status mark-active other
```

This will make RAUC boot from the partition it's not currently booted from. Used to switch between slots.

## Linux

### Get maximum usage of memory of a process (e.g. update-agent)

```shell
# Get maximum usage of memory of the process
grep ^VmPeak /proc/`pidof update-agent`/status

# Get the Peak resident set size
grep ^VmHWM /proc/`pidof update-agent`/status
```

**VmPeak is the maximum total memory usage, including virtual memory, while VmHWM is the peak RAM usage.**

### Get memory map of a process (e.g. update-agent)

```shell
pmap -x `pidof update-agent`
```

## Monitor the OTA Update for a legacy device

Use the following filter in Datadog: `env:stage service:legacy-api @device_id:AC67B24B7474`

Or use [this](https://app.datadoghq.com/logs?query=env%3Astage%20service%3Alegacy-api%20%40device_id%3AAC67B24B7474%20&cols=host%2Cservice&index=%2A&messageDisplay=inline&refresh_mode=sliding&stream_sort=desc&viz=stream&from_ts=1704015168664&to_ts=1705311168664&live=true) url where the filter is pre-defined.