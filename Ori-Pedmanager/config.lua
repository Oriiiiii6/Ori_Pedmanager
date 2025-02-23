Config = {}

Config.Peds = {
    {
        model = "csb_grove_str_dlr",
        coords = vec4(-1026.6138, -2693.0122, 13.8335, 15.8865),
        renderDistance = 50.0,
        targetOptions = {
            {
                type = 'client',
                event = 'qb-clothing:client:openMenu',
                label = 'Open Clothing'
            }
        }
    },
    {
        model = "csb_ballasog",
        coords = vec4(-1018.334, -2698.4, 13.837, 149.83),
        renderDistance = 50.0,
        targetOptions = {
            {
                type = 'client',
                event = 'your event',
                label = 'your label'
            }
        }
    }
}
