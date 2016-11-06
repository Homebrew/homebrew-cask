cask 'timings' do
  version '3.0.2'
  sha256 '491616bdb7688317a44eaae9325d35a0fe2ce1fe6c58b3ac4610d4b5cc1fba65'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: '0e383bab08e9fdc9e2e2ae99c8f63b2d5558991ea0adfb6f47b96fe14392feac'
  name 'Timings'
  homepage 'https://mediaatelier.com/Timings'

  depends_on macos: '>= :mavericks'

  app 'Timings.app'

  zap delete: [
                '~/Library/Preferences/com.mediaateller.Timings.plist',
                '~/Library/Application Support/Timings',
                '~/Library/Caches/com.mediaateller.timings',
              ]
end
