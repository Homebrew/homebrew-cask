cask 'unicodechecker' do
  version '1.19'
  sha256 '072d89e3b2b894288a7315f76c5ead3c023be24a4510cc90ee5ff7250c352e8b'

  url 'https://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'https://earthlingsoft.net/UnicodeChecker/appcast.xml'
  name 'UnicodeChecker'
  homepage 'https://earthlingsoft.net/UnicodeChecker/'

  app "UnicodeChecker #{version}/UnicodeChecker.app"

  zap trash: [
               '~/Library/Caches/net.earthlingsoft.UnicodeChecker',
               '~/Library/Preferences/net.earthlingsoft.UnicodeChecker.plist',
             ]
end
