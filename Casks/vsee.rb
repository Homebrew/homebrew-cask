cask 'vsee' do
  version '4.8.1,41094'
  sha256 '7ea0fd8a7f874052637ed9db15ecc9095872e6f228e894dfa4f7f984521f76ee'

  # d2q5hugz2rti4w.cloudfront.net/ was verified as official when first introduced to the cask
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
