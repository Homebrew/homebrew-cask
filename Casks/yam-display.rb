cask 'yam-display' do
  version '1.8.4'
  sha256 'b3ba345681f9f6bf7ab153ff2eafc9a3578f9d3b31060bdbcb921e6c2c7c492a'

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
