fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
lua54 'yes'

author 'HAWK-SCRIPT'
description 'simplenotify by hawk-script '
version '1.1'

ui_page 'html/index.html'

client_scripts {
    'client.lua'
}

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/fonts/*.ttf',
    'html/sounds/*.mp3',
    'html/*.png'
}
escrow_ignore {
    'client.lua'
}
dependency '/assetpacks'