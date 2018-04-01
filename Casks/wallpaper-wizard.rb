cask 'wallpaper-wizard' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.wallwiz was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.wallwiz/WallpaperWizard.dmg'
  name 'Wallpaper Wizard'
  homepage 'https://wallwiz.com/'

  app 'Wallpaper Wizard.app'
end
