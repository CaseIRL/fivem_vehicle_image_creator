local image_urls_file = 'image_urls.json'
local image_urls = {}

local function save_image_urls()
    local status, result = pcall(json.encode, image_urls, { indent = true })
    if status then
        SaveResourceFile(GetCurrentResourceName(), image_urls_file, result, -1)
    else
        print('Failed to encode image URLs: ' .. result)
    end
end

RegisterNetEvent('vehicle_image_creator:save_image_url')
AddEventHandler('vehicle_image_creator:save_image_url', function(image_url, category, model)
    table.insert(image_urls, { category = category, url = image_url, model = model })
    save_image_urls()
end)
