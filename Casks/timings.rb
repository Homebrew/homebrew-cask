cask 'timings' do
  version '3.0.9'
  sha256 '211b201809c0b88558c5468d9edfc61ff501cd8a6def443ff32a2930ce628965'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: 'd237aa7c3a10af75b1a062e0bd9afd09b902e9bb73dbdd08c28df6120ff09860'
  name 'Timings'
  homepage 'https://www.mediaatelier.com/Timings3/'

  depends_on macos: '>= :mavericks'

  app 'Timings.app'

  zap delete: [
                '~/Library/Preferences/com.mediaateller.Timings.plist',
                '~/Library/Application Support/Timings',
                '~/Library/Caches/com.mediaateller.timings',
              ]
end
