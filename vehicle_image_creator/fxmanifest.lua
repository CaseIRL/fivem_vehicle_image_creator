--[[
     ____    _    ____  _____ 
    / ___|  / \  / ___|| ____|
    | |    / _ \ \___ \|  _|  
    | |___/ ___ \ ___) | |___ 
    \____/_/   \_|____/|_____|
                           
      VEHICLE IMAGE CREATOR
]]

fx_version 'cerulean'
games { 'gta5', 'rdr3' }

name 'vehicle_image_creator'
version '1.0.0'
description 'Vehicle Image Creator'
author 'boiidevelopment'
repository 'https://github.com/caseirl/vehicle_image_creator'
lua54 'yes'

client_script 'client.lua'
server_script 'server.lua'

dependency 'screenshot-basic'
