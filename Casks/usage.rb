cask 'usage' do
  version '1.2'
  sha256 '144edfdc45c7a92e66b4c8730026ef73dc3901b9516bdb084c05a126c9216ad3'

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  appcast 'https://mediaatelier.com/Usage/feed.php',
          checkpoint: '81026be3b915fe9608c1e1787790b427f2e70a804a41b46cd045c8e9a00cf9b5'
  name 'Usage'
  homepage 'https://www.mediaatelier.com/Usage/'

  depends_on macos: '>= :mavericks'

  app 'Usage.app'

  zap delete: [
                '~/Library/Application Support/com.mediaatelier.Usage',
                '~/Library/Caches/com.mediaatelier.Usage',
              ]
end
