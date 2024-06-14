![image](https://github.com/CaseIRL/fivem_vehicle_image_creator/assets/90377400/cf6fd942-0e26-4cd9-a834-1d5cb26337c6)


# FiveM - Vehicle Image Creator

## Overview

Simple straight forward vehicle image creator for fivem.
Setup vehicle spawn coordinates and camera positioning, then run a command to spawn, screenshot and save vehicles to a json file.
You can then use the include python script to download and store all of the images.

Enjoy!

## Instructions

### Vehicle Image Creator

1. Remove `vehicle_image_creator` from the main folder.
2. Modify `vehicle_image_creator/client.lua` to change your settings and add your webhook, these settings are below the vehicles table.
3. Add the folder `vehicle_image_creator` into your fivem server and start it.
4. Use the command `/capture_vehicles` to screenshot and spawn all vehicles in table. Use `/capture_vehicles compacts` to capture a specific category.

- Using the command will spawn vehicles one by one at the location of your choosing, create the cam, screenshot and save details to a json file.
- Once you have caputures all the vehicles you want images for download the `image_urls.json` from your server and proceed with the steps under **Download Images**

### Download Images

1. Download the `image_urls.json` file from your server and place into the folder `py_download_images` if you have not done so already.
2. Run `download_images.py` to download and save all images stored in the json file to a images folder and categorized.

- Please make sure you understand how to run python files... I will not be providing support for this resource.

## Notes

- You are expected to understand how to install, modify basic lua values and run a python file. Please do not join one of my channels asking for support for this, you will be ignored.
