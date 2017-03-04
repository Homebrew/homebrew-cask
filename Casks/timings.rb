cask 'timings' do
  version '3.0.7'
  sha256 '97a634722d8ae5ee864f1e14514d414011d0731351f61e52e0c1417eabbe6936'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: '66049e72c581ce312e800aeb1f28775fe50c44d9c4e2c98cad54156afd64d029'
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
