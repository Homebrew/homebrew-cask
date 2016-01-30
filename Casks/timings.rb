cask 'timings' do
  version '2.4.4'
  sha256 '35627d1c6a46f600555fbefcfac8e2422932a651ec36717a2934146ac3acd719'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          checkpoint: '19c8862848c9a5b37aa20edd06cb48b2a83ab7ff50db28269de18a243851d3b6'
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
