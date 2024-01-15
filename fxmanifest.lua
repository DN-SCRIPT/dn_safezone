fx_version 'adamant'
game 'gta5'
lua54 'yes'

name "DN SAFEZONE"
author "DN DEVELOPMENT"
description "An enhanced version of a SafeZone possible to have a zone with different shapes with PolyZone script"
version '1.0.0'

dependencies {
    'PolyZone',
    'dn_notify'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    '@PolyZone/EntityZone.lua',
    'config.lua',
    'client/*.lua'
}
