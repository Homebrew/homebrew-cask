cask 'usage' do
  version '1.4.2'
  sha256 'e42e63223b9e3a6882bc9b5eb4898c57c534573354cd2b6700c5704d7f7366c0'

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  appcast 'https://mediaatelier.com/Usage/feed.php'
  name 'Usage'
  homepage 'https://www.mediaatelier.com/Usage/'

  depends_on macos: '>= :mavericks'

  app 'Usage.app'

  zap trash: [
               '~/Library/Application Support/com.mediaatelier.Usage',
               '~/Library/Caches/com.mediaatelier.Usage',
               '~/Library/Preferences/com.mediaatelier.Usage.plist',
             ]
end
