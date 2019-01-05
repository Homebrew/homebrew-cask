cask 'vsee' do
  version '4.3.1,37364'
  sha256 '2e041db521da22d34f39d2766b62d663115cbf7fba568c02fa45c42361fa3fd7'

  # d2q5hugz2rti4w.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.after_comma}/vseemac.dmg"
  appcast 'https://client.vsee.com/mac/appcast.xml'
  name 'VSee'
  homepage 'https://vsee.com/'

  app 'VSee.app'

  uninstall login_item: 'VSee.app',
            delete:     '~/Library/Internet Plug-Ins/VSeeHelper.plugin'

  zap trash: [
               '~/Library/Preferences/com.vsee.VSee.plist',
               '~/Library/Application Support/VSee',
               '~/Library/Caches/com.vsee.VSee',
               '~/Library/Logs/VSee',
             ]
end
