Device ID:
`kitchenos:ZenKitchen:EGODemo`

1. pull https://github.com/dropkitchen/iot-micro-firmware/tree/feat/EGO_demo and all its submodules 
`git pull && git pull --recurse-submodules && git submodule update --init --recursive`
2. Change the date to the desired one in the CMakeLists.txt (do not zero pad), then run:
`make clean && make esp32` 

3. rename the binary to desired date e.g. 25.8.12.bin (do not zero pad)

4. get/set Idtoken in lugh

5. Run the following changing the bin and device_id(for the rule):

`export AWS_PROFILE=stage_kitchenos`

`poetry run lugh --env stage kos devices ota upload-file micro-iot  25.8.12 kitchenos:ZenKitchen:EGODemo /home/marco/Desktop/25.08.12.bin`

`poetry run lugh --env stage kos devices ota create-rule micro-iot 25.8.12  kitchenos:ZenKitchen:EGODemo a85b096e-b162-4060-8323-eb90b8842007`