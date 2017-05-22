cask 'usage' do
  version '1.4.1'
  sha256 'f5df10949605a1440d11122128da284337018df1eb2ce6e30309d1a4e0d865ff'

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  appcast 'https://mediaatelier.com/Usage/feed.php',
          checkpoint: 'df65bdf80fd02054dd20eea3e12300658a29e1b9255dd7043c416228c46aaa4b'
  name 'Usage'
  homepage 'https://www.mediaatelier.com/Usage/'

  depends_on macos: '>= :mavericks'

  app 'Usage.app'

  zap delete: [
                '~/Library/Application Support/com.mediaatelier.Usage',
                '~/Library/Caches/com.mediaatelier.Usage',
              ]
end
