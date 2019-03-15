cask 'vsee' do
  version '4.4.0,38059'
  sha256 'ca70a95ce5e50968a1554bde6541584967426925cfa8424d1b580bd2ad599608'

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
