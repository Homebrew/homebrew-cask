cask 'visitors' do
  version '0.3.3'
  sha256 '63d3b52f601e2aabc8de6cac479359e78d21d1311b70a6916faf8007fa14cd22'

  url "https://mediaatelier.com/Visitors/Visitors_#{version}.zip"
  appcast 'https://mediaatelier.com/Visitors/feed.php'
  name 'Visitors'
  homepage 'https://www.mediaatelier.com/Visitors/'

  app 'Visitors.app'

  uninstall login_item: 'Visitors',
            quit:       'com.mediaatelier.Visitors'

  zap trash: [
               '~/Library/Caches/com.mediaatelier.Visitors',
               '~/Library/Preferences/com.mediaatelier.Visitors.plist',
             ]
end
