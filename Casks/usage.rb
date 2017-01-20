cask 'usage' do
  version '1.3'
  sha256 'd976ad992a15cc8dc78ee8f5cfc68970fb654ae2ae6367020565ee14dd9a5521'

  url "https://mediaatelier.com/Usage/Usage_#{version}.zip"
  appcast 'https://mediaatelier.com/Usage/feed.php',
          checkpoint: 'a0294fb6625e0f98f3c988889a4ba77b4b8e96dd18f78a994c458a3b2762d160'
  name 'Usage'
  homepage 'https://www.mediaatelier.com/Usage/'

  depends_on macos: '>= :mavericks'

  app 'Usage.app'

  zap delete: [
                '~/Library/Application Support/com.mediaatelier.Usage',
                '~/Library/Caches/com.mediaatelier.Usage',
              ]
end
