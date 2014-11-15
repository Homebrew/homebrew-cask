cask :v1 => 'wallpaper-wizard' do
  version '1.4'
  sha256 '73cd786b81db5eec9734277d8b74a34bb90494637bb5324f8a6a9df40ef89704'

  url "http://cloud.coppertino.com/wallwiz/wallpaperwizard_#{version}.dmg"
  appcast 'http://update.coppertino.com/wpw/appcast.xml',
          :sha256 => '7a10ac07828ce38b72b86bb6003de0430f5a545cdc61e25d865f7ef0db05d6c4'
  homepage 'http://wallwiz.com'
  license :unknown

  app 'Wallpaper Wizard.app'
end
