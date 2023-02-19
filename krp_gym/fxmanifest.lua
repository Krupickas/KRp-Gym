fx_version 'adamant'

Author 'Krupickas'

game 'gta5'

version '1.1.0'

Author 'Krupickas'

lua54 'yes'
shared_script {
  '@ox_lib/init.lua',
  '@qb-core/shared/locale.lua',
  'locales/en.lua',
  'locales/*.lua'
}

client_scripts {
  '@PolyZone/client.lua',
  '@PolyZone/BoxZone.lua',
  '@PolyZone/EntityZone.lua',
  '@PolyZone/CircleZone.lua',
  '@PolyZone/ComboZone.lua',
  'config.lua',
  'cl_exercise/*.lua'
}
