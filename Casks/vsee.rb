cask 'vsee' do
  version '3.12.0,34421'
  sha256 'd93808c63ad159ec065b7eec079aee392532804c945def8edf2b3e6dd00cd576'

  # d2q5hugz2rti4w.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2q5hugz2rti4w.cloudfront.net/mac/#{version.after_comma}/vseemac.dmg"
  name 'VSee'
  homepage 'https://vsee.com/'

  app 'VSee.app'

  uninstall login_item: 'VSee.app',
            trash:      '~/Library/Internet Plug-Ins/VSeeHelper.plugin'

  zap trash: [
               '~/Library/Preferences/com.vsee.VSee.plist',
               '~/Library/Application Support/VSee',
               '~/Library/Caches/com.vsee.VSee',
               '~/Library/Logs/VSee',
             ]
end
