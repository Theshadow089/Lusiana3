fx_version 'cerulean'
games { 'gta5' }

files {
    'html/*.*',
    'html/**/*.*',
    'html/**/**/*.*'
}

ui_page 'html/index.html'

client_script "cl_carry.lua"
server_script "sv_carry.lua"
