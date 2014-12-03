cask :v1 => 'wallpaper-clocks' do
  version :latest
  sha256 :no_check

  url 'http://files.vladstudio.com/wallpaperclock/WallpaperClocksOSX.zip'
  homepage 'http://www.vladstudio.com/wallpaperclocks/'
  license :gratis

  app 'Wallpaper Clocks.app'
  uninstall :quit => 'com.vladstudio.Wallpaper Clocks'
end
