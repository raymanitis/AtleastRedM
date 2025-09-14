fx_version 'cerulean'
game 'rdr3'
lua54 'yes'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'FatherHarold'
description 'Blacksmith Smelting Script for VORP Core with Feather Menu'
version '1.3.3'

escrow_ignore {
    'config.lua',
    'lang.lua'
}

client_scripts {
    'config.lua',
    'lang.lua',
    'forge_menu.lua',
    'client.lua',

}

server_scripts {
    'config.lua',
    'server.lua'
}

dependencies {
    'feather-menu',
    'feather-progressbar',
    'vorp_animations',
    'vorp_inventory'
}
dependency '/assetpacks'