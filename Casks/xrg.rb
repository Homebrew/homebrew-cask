cask 'xrg' do
  version '2.5.0'
  sha256 'c9cc0e808a87376c838fa6e4a9c04fef9143a8ddedcfce9f7187258d7eac9ec9'

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
