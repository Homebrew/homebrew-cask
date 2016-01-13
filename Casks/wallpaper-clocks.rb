cask 'wallpaper-clocks' do
  version :latest
  sha256 :no_check

  url 'http://files.vladstudio.com/wallpaperclock/WallpaperClocksOSX.zip'
  appcast 'http://www.vladstudio.com/wallpaperclock/wallclocks_en.xml',
          :sha256 => 'f489bd062dce7caf673e9b1b7468eec359ddc5966b7bd2b32c2e7f990b4aabe3'
  name 'Wallpaper clocks'
  homepage 'http://www.vladstudio.com/wallpaperclocks/'
  license :gratis

  app 'Wallpaper Clocks.app'

  uninstall :quit => 'com.vladstudio.Wallpaper Clocks'
end
