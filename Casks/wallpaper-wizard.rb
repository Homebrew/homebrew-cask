cask 'wallpaper-wizard' do
  version '2.1.6'
  sha256 '250b877fb73d4c8a968b56990b8847bce83b005801dcf3fef915bdecaab4259b'

  # dl.devmate.com/com.macpaw.WallWiz-site was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.WallWiz-site/WallpaperWizard-#{version.major}.dmg"
  appcast 'https://updates.devmate.com/com.macpaw.WallWiz-site.xml'
  name 'Wallpaper Wizard'
  homepage 'https://wallwiz.com/'

  app 'Wallpaper Wizard.app'

  uninstall login_item: 'Wallpaper Wizard',
            quit:       'com.macpaw.WallWiz-site'

  zap trash: [
               '~/Library/Preferences/com.macpaw.WallWiz-site.plist',
               '~/Library/Application Support/Wallpaper Wizard',
               '~/Library/Application Support/com.macpaw.WallWiz-site',
               '~/Library/Caches/com.macpaw.WallWiz-site',
               '~/Library/Cookies/com.macpaw.WallWiz-site.binarycookies',
               '~/Library/Logs/com.macpaw.WallWiz-site',
             ]
end
