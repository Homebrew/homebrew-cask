cask 'unicodechecker' do
  version '1.21.1,755'
  sha256 '0b6019277bade20ccd2904adf0fd29c7395ab495e02ace8c5b58d4e33ebd6587'

  url 'https://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'https://earthlingsoft.net/UnicodeChecker/appcast.xml'
  name 'UnicodeChecker'
  homepage 'https://earthlingsoft.net/UnicodeChecker/'

  app "UnicodeChecker #{version.before_comma} (#{version.after_comma})/UnicodeChecker.app"

  zap trash: [
               '~/Library/Application Support/UnicodeChecker',
               '~/Library/Caches/net.earthlingsoft.UnicodeChecker',
               '~/Library/Preferences/net.earthlingsoft.UnicodeChecker.plist',
             ]
end
