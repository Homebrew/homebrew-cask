cask 'wallpaper-clocks' do
  version '1.1'
  sha256 '8e088a53d0061f13d2f1f9e972caf3cc2fb67355d57440b5f8d236d2e9bae863'

  url 'http://files.vladstudio.com/wallpaperclock/WallpaperClocksOSX.zip'
  appcast 'http://www.vladstudio.com/wallpaperclock/wallclocks_en.xml',
          checkpoint: 'bd414f270da6eb929c24f85af3e29d56dd0604c999f87be862917ec992040636'
  name 'Wallpaper clocks'
  homepage 'http://www.vladstudio.com/wallpaperclocks/'

  app 'Wallpaper Clocks.app'

  uninstall quit: 'com.vladstudio.Wallpaper Clocks'
end
