cask 'vsee' do
  version '4.6.1,39627'
  sha256 '6b0c7697bc107f9d020bdef52481a8f3da1028321712d697b5dcfb6756a4fbc8'

  # d2q5hugz2rti4w.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.after_comma}/vseemac.dmg"
  appcast 'https://client.vsee.com/mac/appcast.xml'
  name 'VSee'
  homepage 'https://vsee.com/'

  app 'VSee.app'

  uninstall delete: '~/Library/Internet Plug-Ins/VSeeHelper.plugin'

  zap trash: [
               '~/Library/Preferences/com.vsee.VSee.plist',
               '~/Library/Application Support/VSee',
               '~/Library/Caches/com.vsee.VSee',
               '~/Library/Logs/VSee',
             ]
end
