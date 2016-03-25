cask 'wallpaper-clocks' do
  version '1.1'
  sha256 '8e088a53d0061f13d2f1f9e972caf3cc2fb67355d57440b5f8d236d2e9bae863'

  url 'http://files.vladstudio.com/wallpaperclock/WallpaperClocksOSX.zip'
  appcast 'http://www.vladstudio.com/wallpaperclock/wallclocks_en.xml',
          checkpoint: '9c205568e9bdc28f73f8bcf82a44e4c03605020551fa0e286e51d681c4cd8dd3'
  name 'Wallpaper clocks'
  homepage 'http://www.vladstudio.com/wallpaperclocks/'
  license :gratis

  app 'Wallpaper Clocks.app'

  uninstall quit: 'com.vladstudio.Wallpaper Clocks'
end
