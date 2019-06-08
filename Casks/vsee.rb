cask 'vsee' do
  version '4.5.0,38793'
  sha256 '6f503d12858f842dfd26d31b378f629030657853e5b9f33fe43c1b7828a942b1'

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
