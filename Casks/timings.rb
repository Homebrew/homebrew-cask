cask 'timings' do
  version '2.4.4'
  sha256 '35627d1c6a46f600555fbefcfac8e2422932a651ec36717a2934146ac3acd719'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          checkpoint: '3b6e549e1b34da291cc51eddad9b27db684b6165ddd2f7fd8c72432e55982694'
  name 'Timings'
  homepage 'http://mediaatelier.com/Timings'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Timings.app'

  zap delete: [
                '~/Library/Preferences/com.mediaateller.Timings.plist',
                '~/Library/Application Support/Timings',
                '~/Library/Caches/com.mediaateller.timings',
              ]
end
