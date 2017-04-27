cask 'timings' do
  version '3.0.9'
  sha256 '211b201809c0b88558c5468d9edfc61ff501cd8a6def443ff32a2930ce628965'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: 'bfa5733087c30e47ac18764caa2a022ec55e3eb7fa5b2d9985d9b23f603289eb'
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
