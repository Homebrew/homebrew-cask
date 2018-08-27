cask 'usage' do
  version '1.4.3'
  sha256 'a9a8c3a02027c9287ae895e6547540510e941b94d9d5035ae9cfd4b3ccca4b2b'

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
