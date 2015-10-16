cask :v1 => 'wallpaper-clocks' do
  version :latest
  sha256 :no_check

  url 'http://files.vladstudio.com/wallpaperclock/WallpaperClocksOSX.zip'
  name 'Wallpaper clocks'
  appcast 'http://www.vladstudio.com/wallpaperclock/wallclocks_en.xml',
          :sha256 => 'd3d6b621309deaa80c5b81b292fa50af55395bcc350b686c79fe180ee23123a6'
  homepage 'http://www.vladstudio.com/wallpaperclocks/'
  license :gratis

  app 'Wallpaper Clocks.app'

  uninstall :quit => 'com.vladstudio.Wallpaper Clocks'
end
