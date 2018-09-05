cask 'unicodechecker' do
  version '1.20'
  sha256 '5f4c9e952b8e40e6d7dc01e1ab523f69ebadb3d5da645c71eaa2fd52d6c2671b'

  url 'https://earthlingsoft.net/UnicodeChecker/UnicodeChecker.zip'
  appcast 'https://earthlingsoft.net/UnicodeChecker/appcast.xml'
  name 'UnicodeChecker'
  homepage 'https://earthlingsoft.net/UnicodeChecker/'

  app "UnicodeChecker #{version}/UnicodeChecker.app"

  zap trash: [
               '~/Library/Application Support/UnicodeChecker',
               '~/Library/Caches/net.earthlingsoft.UnicodeChecker',
               '~/Library/Preferences/net.earthlingsoft.UnicodeChecker.plist',
             ]
end
