cask 'timings' do
  version '3.0.6'
  sha256 'd82acd395c2fe04cbe463886224ed0f1321b0b9f5a8b348e08946618c3acbefc'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: 'f085b1c00b8230580aeb4593cef0daa41a1647c29e02dabc29a180203a02e4e0'
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
