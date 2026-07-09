I have the app installed on my android device and have made a couple of additions to our MCU's startup sequence which is now as follows:

1. wait until we receive and respond to the startCommunication request and the getDataPoints(advertising name(6)) requests from the MCU

     * The advertising name we provide is "MVF_FW", which is what we had previously used last year for the previous app

     * we also have the model number available as "kitchenos:ZenKitchen:MVFSingleOven", which we also used last year, but it doesn't seem that the IoT is requesting this datapoint

2. send a subscribeDataPoints(194,195,196,197) request to the IoT per Marco's request

    * The IoT is now updating those datapoints in our MCU as the network and provisioning states change

3. send a startProvisioning() request to the IoT to start network provisioning

  

It sounds like the BLE advertising name needs to be something specific that's different from what we have now. Apologies if I missed what that should be, because there have been a bunch of messages back and forth in this thread, but could you provide what we should use as the advertising name, so the app can find it?

  

Also, the wifi button is new for this hardware version, so could you provide a bit of explanation about how the new MVF firmware uses that? I could not find references to it in the MVF firmware release which is all I have access to.