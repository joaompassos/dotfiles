```
dbus-monitor --system "sender=com.kitchenos.Appliance"
```
```
dbus-send --session --print-reply --dest=org.freedesktop.DBus  /org/freedesktop/DBus org.freedesktop.DBus.ListNames
```
```
dbus-send --system --print-reply=literal --dest=com.kitchenos.Agent /com/kitchenos/Agent org.freedesktop.DBus.Properties.Get string:com.kitchenos.Agent.Connectivity1 string:'MacAddress'
```

## Use `dbus-send` to interact with D-Bus services

### List registered services

```shell
dbus-send --system --print-reply --dest=org.freedesktop.DBus  /org/freedesktop/DBus org.freedesktop.DBus.ListNames
```

### Read a property
```shell
dbus-send --system --print-reply=literal --dest=com.kitchenos.Agent /com/kitchenos/Agent org.freedesktop.DBus.Properties.Get string:com.kitchenos.Agent.Connectivity1 string:'MacAddress'
```

#### Example: Read appliance State using `dbus-send`

```shell
dbus-send --system --print-reply=literal --dest=com.kitchenos.Appliance /com/kitchenos/Appliance org.freedesktop.DBus.Properties.Get string:com.kitchenos.Appliance.Control1 string:State
```

#### Example: Read appliance `ModelNumber` using `dbus-send`

```shell
dbus-send --system --print-reply=literal --dest=com.kitchenos.Appliance /com/kitchenos/Appliance org.freedesktop.DBus.Properties.Get string:com.kitchenos.Appliance.Appliance1 string:ModelNumber
```

### Execute a method

```shell
dbus-send --system --print-reply=literal --dest=com.kitchenos.Agent /com/kitchenos/Agent com.kitchenos.Agent.Update1.GetUpdateURL
```

## Use `dbus-monitor` to inspect D-Bus messages

### See all the messages sent by the `partner-agent`

```shell
dbus-monitor --system "sender='com.kitchenos.Appliance'"
```
