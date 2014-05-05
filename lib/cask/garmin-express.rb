class GarminExpress < Cask
  url 'http://download.garmin.com/omt/express/GarminExpress.dmg'
  homepage 'http://www.garmin.com/express'
  version 'lastest'
  no_checkum
  install 'Install Garmin Express.pkg'
  uninstall :pkgutil => 'com.garmin.renu.client'
end
