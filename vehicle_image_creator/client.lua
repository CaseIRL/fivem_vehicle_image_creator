--[[
     ____    _    ____  _____ 
    / ___|  / \  / ___|| ____|
    | |    / _ \ \___ \|  _|  
    | |___/ ___ \ ___) | |___ 
    \____/_/   \_|____/|_____|
                           
      VEHICLE IMAGE CREATOR
]]

--- Vehicle list.
-- This should cover all RP relevant vehicles with any armoury or weaponized vehicles removed. However I may have missed some.
local vehicles = {
    { 
        category = 'compacts', 
        models = {
            'asbo', 'blista', 'blista2', 'brioso', 'brioso2', 'brioso3', 'dilettante', 'kanjo', 'issi2', 
            'issi3', 'panto', 'prairie', 'rhapsody', 'weevil', 'club'
        }
    },
    { 
        category = 'coupes', 
        models = {
            'cogcabrio', 'exemplar', 'f620', 'felon', 'felon2', 'jackal', 'oracle', 'oracle2', 'sentinel', 
            'sentinel2', 'windsor', 'windsor2', 'zion', 'zion2', 'previon', 'kanjosj', 'postlude'
        }
    },
    { 
        category = 'bicycles', 
        models = {
            'bmx', 'cruiser', 'fixter', 'scorcher', 'tribike', 'tribike2', 'tribike3'
        }
    },
    { 
        category = 'muscle', 
        models = {
            'blade', 'buccaneer', 'buccaneer2', 'chino', 'chino2', 'coquette3', 'deviant', 'dominator', 
            'dominator2', 'dominator3', 'dukes', 'ellie', 'faction', 'faction2', 'faction3', 'gauntlet', 
            'gauntlet2', 'gauntlet3', 'gauntlet4', 'gauntlet5', 'greenwood', 'hotknife', 'hustler', 'hermes', 
            'manana2', 'stalion', 'stalion2', 'tampa', 'tampa2', 'ruiner', 'ruiner4', 'vigero', 'vigero2', 
            'weevil2', 'peyote2', 'picador', 'buffalo4', 'clique', 'dominator7', 'dominator8', 'impaler', 
            'moonbeam', 'moonbeam2', 'nightshade', 'phoenix', 'sabregt', 'sabregt2', 'slamvan', 'slamvan3', 
            'tahoma', 'tulip', 'tulip2', 'vamos', 'virgo', 'virgo2', 'virgo3', 'voodoo', 'voodoo2', 'yosemite', 
            'yosemite2'
        }
    },
    { 
        category = 'motorcycles', 
        models = {
            'akuma', 'avarus', 'bagger', 'bati', 'bati2', 'bf400', 'carbonrs', 'chimera', 'cliffhanger', 
            'daemon', 'daemon2', 'defiler', 'diablous', 'diablous2', 'double', 'enduro', 'esskey', 
            'faggio', 'faggio2', 'faggio3', 'fcr', 'fcr2', 'gargoyle', 'hakuchou', 'hakuchou2', 'hexer', 
            'innovation', 'manchez', 'nemesis', 'nightblade', 'pcj', 'ratbike', 'ruffian', 'sanchez', 
            'sanchez2', 'sanctus', 'stryder', 'thrust', 'vader', 'vindicator', 'vortex', 'wolfsbane', 
            'zombiea', 'zombieb', 'manchez2', 'shinobi', 'reever', 'lectro', 'manchez3', 'sovereign'
        }
    },
    { 
        category = 'offroad', 
        models = {
            'bfinjection', 'bifta', 'blazer', 'blazer2', 'blazer3', 'blazer4', 'brawler', 'caracara2', 
            'draugur', 'dubsta3', 'dune', 'kalahari', 'mesa', 'mesa3', 'outlaw', 'rancherxl', 'rebel', 
            'rebel2', 'riata', 'sandking', 'sandking2', 'trophytruck', 'trophytruck2', 'winky', 
            'patriot3', 'yosemite3', 'everon', 'hellion', 'kamacho'
        }
    },
    { 
        category = 'sedans', 
        models = {
            'asea', 'asterope', 'cog55', 'cognoscenti', 'emperor', 'fugitive', 'glendale', 
            'glendale2', 'ingot', 'intruder', 'premier', 'primo', 'primo2', 'regina', 
            'stafford', 'stanier', 'stratum', 'superd', 'surge', 'tailgater', 'warrener', 
            'warrener2', 'washington', 'tailgater2', 'cinquemila', 'deity', 'rhinehart'
        }
    },
    {
        category = 'sports',
        models = {
            'alpha', 'banshee', 'bestiagts', 'buffalo', 'buffalo2', 'carbonizzare', 
            'comet2', 'comet4', 'comet5', 'comet6', 'comet7', 'coquette', 'coquette4', 
            'corsita', 'drafter', 'elegy', 'elegy2', 'feltzer2', 'flashgt', 'furoregt', 
            'gb200', 'komoda', 'imorgon', 'italigto', 'jugular', 'jester', 'jester2', 
            'jester3', 'khamelion', 'kuruma', 'locust', 'lynx', 'massacro', 'massacro2', 
            'neo', 'neon', 'ninef', 'ninef2', 'omnis', 'paragon', 'pariah', 'penumbra', 
            'penumbra2', 'rapidgt', 'rapidgt2', 'raptor', 'revolter', 'ruston', 'schafter3', 
            'schafter4', 'schlagen', 'schwarzer', 'seven70', 'specter', 'streiter', 
            'sugoi', 'sultan', 'sultan2', 'sultanrs', 'surano', 'tropos', 'verlierer2', 
            'vstr', 'italirsx', 'zr350', 'calico', 'futo2', 'euros', 'jester4', 'remus', 
            'growler', 'vectre', 'cypher', 'sultan3', 'rt3000', 'omnisegt', 'sentinel3', 
            'sentinel4', 'sm722', 'tenf', 'tenf2'
        }
    },
    {
        category = 'sportsclassics',
        models = {
            'comet3', 'coquette2', 'ardent', 'btype', 'btype2', 'btype3', 'casco', 'dynasty', 
            'fagaloa', 'feltzer3', 'gt500', 'infernus2', 'jb7002', 'mamba', 'michelli', 
            'monroe', 'nebula', 'peyote', 'peyote3', 'pigalle', 'rapidgt3', 'retinue', 
            'retinue2', 'savestra', 'stinger', 'stingergt', 'stromberg', 'swinger', 
            'torero', 'tornado', 'tornado2', 'tornado3', 'tornado4', 'tornado5', 'turismo2', 
            'viseris', 'z190', 'ztype', 'zion3', 'cheburek', 'manana'
        }
    },
    {
        category = 'super',
        models = {
            'adder', 'autarch', 'banshee2', 'bullet', 'cheetah', 'deveste', 'entity2', 
            'entityxf', 'emerus', 'fmj', 'furia', 'gp1', 'infernus', 'italigtb', 
            'italigtb2', 'krieger', 'le7b', 'nero', 'nero2', 'osiris', 'penetrator', 
            'pfister811', 'prototipo', 'reaper', 's80', 'sc1', 'sheava', 't20', 'taipan', 
            'tezeract', 'thrax', 'tigon', 'turismor', 'tyrant', 'tyrus', 'vacca', 'vagner', 
            'visione', 'xa21', 'zentorno', 'zorrusso', 'lm87', 'torero2', 'zeno'
        }
    },
    {
        category = 'suvs',
        models = {
            'baller', 'baller2', 'baller3', 'baller4', 'baller7', 'bjxl', 'cavalcade', 
            'cavalcade2', 'contender', 'dubsta', 'dubsta2', 'fq2', 'granger', 'gresley', 
            'habanero', 'huntley', 'landstalker', 'landstalker2', 'mesa', 'novak', 'patriot', 
            'radi', 'rebla', 'rocoto', 'seminole', 'seminole2', 'serrano', 'toros', 'xls', 
            'granger2', 'iwagen', 'astron', 'jubilee'
        }
    },
    {
        category = 'vans',
        models = {
            'bison', 'bobcatxl', 'burrito3', 'gburrito2', 'rumpo', 'journey', 'minivan', 
            'minivan2', 'paradise', 'rumpo3', 'speedo', 'surfer', 'youga', 'youga2', 'youga3'
        }
    },
    {
        category = 'boats',
        models = {
            'squalo', 'marquis', 'seashark', 'seashark2', 'seashark3', 'jetmax', 
            'tropic', 'tropic2', 'dinghy', 'dinghy2', 'dinghy3', 'dinghy4', 
            'suntrap', 'speeder', 'speeder2', 'longfin', 'toro', 'toro2'
        }
    },
    {
        category = 'helicopters',
        models = {
            'buzzard2', 'conada', 'frogger', 'frogger2', 'maverick', 'swift', 
            'swift2', 'seasparrow', 'seasparrow2', 'seasparrow3', 'supervolito', 
            'supervolito2', 'volatus', 'havok'
        }
    },
    {
        category = 'planes',
        models = {
            'duster', 'luxor', 'luxor2', 'stunt', 'mammatus', 'velum', 
            'velum2', 'shamal', 'vestra', 'dodo', 'howard', 'alphaz1', 
            'nimbus'
        }
    },
    {
        category = 'commercial',
        models = {
            'hauler', 'packer', 'stockade', 'biff', 'phantom', 'phantom3', 
            'benson', 'mule', 'mule2', 'mule3', 'mule4', 'mule5', 'pounder'
        }
    },
    {
        category = 'industrial',
        models = {
            'cutter', 'handler', 'bulldozer', 'dump', 'flatbed', 'guardian', 
            'mixer', 'mixer2', 'rubble', 'tiptruck', 'tiptruck2'
        }
    }
}

--- Your webhook to send screenshots to
local screenshot_webhook = 'https://discord.com/api/webhooks/1251087577578999931/UJ8tiz44CcB-FxW97p1k7w2fkpQrpTMGM0SUYzvhmT_NjBuaQiLBwJSfEz35_JnBlqeq'

--- Environment
local weather = 'EXTRASUNNY' -- Weather type whilst spawning vehicles
local hour = 10 -- Game time hour whist spawning vehicles

--- Track cam
local cam_active = false
local cam = nil

--- Cam positioning
-- Modify these values to move the cam position, change rotation, fov or z height
local cam_pos = vector3(-2183.51, -416.91, 13.09) -- Cam position
local cam_rot = vector3(-15.0, 0.0, 223.0) -- Cam rotation
local cam_fov = 40.0 -- Field of view
local z_modifier = 1.0 -- Increase z height of cam

--- Vehicle spawn location
local vehicle_spawn = vector4(-2179.36, -421.68, 12.77, 1.44)

--- Sets current weather and time to values
local function set_weather_and_time()
    while true do
        SetWeatherTypePersist(weather)
        SetWeatherTypeNowPersist(weather)
        SetWeatherTypeNow(weather)
        SetOverrideWeather(weather)
        NetworkOverrideClockTime(hour, 0, 0)
        Wait(5000)
    end
end

--- Toggle cam
local function setup_camera(enable)
    if enable then
        cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
        local cam_pos = cam_pos
        local cam_rot = cam_rot
        SetCamCoord(cam, cam_pos.x, cam_pos.y, cam_pos.z + z_modifier)
        SetCamRot(cam, cam_rot.x, cam_rot.y, cam_rot.z, 2)
        SetCamActive(cam, true)
        SetCamFov(cam, cam_fov)
        RenderScriptCams(true, false, 0, true, true)
        cam_active = true
    else
        if cam_active then
            RenderScriptCams(false, false, 0, true, true)
            DestroyCam(cam, false)
            cam_active = false
        end
    end
end

--- Spawn vehicles
local function spawn_vehicle(model_name)
    local model = GetHashKey(model_name)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500)
    end
    local pos = vehicle_spawn
    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, pos.w, true, false)
    return vehicle
end

--- Takes screenshot through screenshot basic, sends hook, and prints on success
local function take_screenshot_and_send(model, category)
    exports['screenshot-basic']:requestScreenshotUpload(screenshot_webhook, 'files[]', function(data)
        local resp = json.decode(data)
        if resp and resp.attachments and #resp.attachments > 0 then
            local image_url = resp.attachments[1].url
            TriggerServerEvent('vehicle_image_creator:save_image_url', image_url, category, model)
        end
    end)
end

--- Setup cam, spawn vehicle and screenshot
local function capture_vehicles(enable_camera, specific_category)
    setup_camera(enable_camera)
    for _, category_data in ipairs(vehicles) do
        if specific_category == nil or specific_category == category_data.category then
            local category = category_data.category
            for _, model in ipairs(category_data.models) do
                local vehicle = spawn_vehicle(model)
                Wait(2000)
                take_screenshot_and_send(model, category)
                Wait(5000)
                DeleteVehicle(vehicle)
            end
        end
    end
    setup_camera(false)
end

--- Start the capturing process
-- @usage /capture_vehicles compacts
RegisterCommand('capture_vehicles', function(source, args)
    local enable_camera = true
    local specific_category = args[1] or nil
    capture_vehicles(enable_camera, specific_category)
end, false)

--- Toggle cam
-- Used for testing cam positions before starting capture
RegisterCommand('setupcam', function()
    setup_camera(not cam_active)
end, false)

--- Weather & time thread
CreateThread(set_weather_and_time)