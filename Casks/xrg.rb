cask 'xrg' do
  version '2.8.1'
  sha256 '8eceb847d241d5bc2955298df6832047dd2ef954a45d497525cded947629f0ad'

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  appcast 'https://gauchosoft.com/Products/XRG/'
  name 'XRG'
  homepage 'https://gauchosoft.com/Products/XRG/'

  app 'XRG.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/XRG Help*',
               '~/Library/Caches/com.piatekjimenez.XRG',
               '~/Library/Cookies/com.piatekjimenez.XRG.binarycookies',
               '~/Library/Preferences/com.piatekjimenez.XRG.plist',
             ]
end
