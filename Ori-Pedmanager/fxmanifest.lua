fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'ori(us3rrrr.)'
description 'Ped With Event'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}
server_script 'server.lua'
client_script 'client.lua'

dependency 'ox_lib'
