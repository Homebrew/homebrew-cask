cask 'yam-display' do
  version '1.8.2'
  sha256 'f905b4cd69d947739542961a05dbabe8a8f50a8613675e70290960fb5cd6e935'

  url "https://www.yamdisplay.com/app/YamDisplay#{version}.zip"
  appcast 'https://www.yamdisplay.com/app/appcast.xml'
  name 'Yam Display'
  homepage 'https://www.yamdisplay.com/'

  app 'Yam Display.app'

  zap trash: [
    '~/Library/Caches/com.yamstu.yamdisplaymac',
    '~/Library/Preferences/com.yamstu.yamdisplaymac.plist',
  ]
end
