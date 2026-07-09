1. That is the expected behavior of the IoT module after the initial handshake. Your MCU should expected this request to be sent and send a response right away with the Advertising Name. Note that the value of this datapoint is a string with a maximum length of 8 characters and it is agreed between GE and Fresco. If you're using the Micro CLI you don't have to send a response manually as the CLI sends it automatically when the request is received. Also, you won't receive a response to a response message - response messages only come after request messages.
   
   Yes, that message stands for MVF_FW. Let me break it down for you:
   02 - Type: Response
   02 - Opcode: GetDatapoints
   01 - MsgID
   09 00 - Size
   00 - Responde code: 0 equals success
   06 06 4D 56 46 5F 46 57 - Data: DPID (06) + Value
   Since it is a string, first byte (06) specifies the string size and the remaining bytes the characters
   03 81 - CRC
   
   I noticed that you have 2 extra bytes after the string, which are not expected. I tested that on my side and I didn't find those extra bytes after the string. Was that a typo or are do you keep getting those? Let me know please.
   
1. Which data table are you referring to? We have both the 'Shared MCU' and 'Shared IoT' data tables fully defined in the UFP document in section 4.8. If you mean the 'Appliance Data Table', it contains only the Zen Appliance example.
   The data types are described in section 4.4, with the size and structure of each one of them being described there. If you have any question about those, please let me know.
   
2. Maybe I didn't explained myself correctly in the past emails. All the features of your appliance will belong to the 0x20 Start Program opcode data. This is, the 'Program' data of the 'Start program' opcode should have all your features. See the image below as an example: