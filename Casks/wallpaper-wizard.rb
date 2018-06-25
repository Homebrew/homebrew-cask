cask 'wallpaper-wizard' do
  version '1.5.1,1455290016'
  sha256 '5f6d190cff7af60050357d993ee34b9544fe15672b535769766ab783cbd09f99'

  # dl.devmate.com/com.wallwiz was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.wallwiz/#{version.before_comma}/#{version.after_comma}/WallpaperWizard-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.wallwiz.xml'
  name 'Wallpaper Wizard'
  homepage 'https://wallwiz.com/'

  app 'Wallpaper Wizard.app'
end
