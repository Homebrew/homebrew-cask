cask 'unicodechecker' do
  version '1.21'
  sha256 'b478c39d96f58aa355a073ce39b80320c7f717e738a1629ee2653bdf288889f9'

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
