cask :v1 => 'wallpaper-wizard' do
  version '1.5.1'
  sha256 '5f6d190cff7af60050357d993ee34b9544fe15672b535769766ab783cbd09f99'

  # coppertino.com is the official download host per the vendor homepage
  url "http://cloud.coppertino.com/wallwiz/wallpaperwizard_#{version}.dmg"
  name 'Wallpaper Wizard'
  appcast 'http://update.coppertino.com/wpw/appcast.xml',
          :sha256 => '7a10ac07828ce38b72b86bb6003de0430f5a545cdc61e25d865f7ef0db05d6c4'
  homepage 'http://wallwiz.com'
  license :freemium

  app 'Wallpaper Wizard.app'
end
