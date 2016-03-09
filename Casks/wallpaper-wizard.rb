cask 'wallpaper-wizard' do
  version '1.5.1'
  sha256 '5f6d190cff7af60050357d993ee34b9544fe15672b535769766ab783cbd09f99'

  # coppertino.com is the official download host per the vendor homepage
  url "http://cloud.coppertino.com/wallwiz/wallpaperwizard_#{version}.dmg"
  name 'Wallpaper Wizard'
  homepage 'http://wallwiz.com'
  license :freemium

  app 'Wallpaper Wizard.app'
end
