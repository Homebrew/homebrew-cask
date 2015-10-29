cask :v1 => 'timings' do
  version '2.4.4'
  sha256 '35627d1c6a46f600555fbefcfac8e2422932a651ec36717a2934146ac3acd719'

  url "http://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'http://mediaatelier.com/Timings2/feed.php',
          :sha256 => '1d13902682950cfe77c621cde054c08502903b0effca0e09703b562da5d9e683'
  name 'Timings'
  homepage 'http://mediaatelier.com/Timings'
  license :commercial
  depends_on :macos => '>= :mavericks'

  app 'Timings.app'

  zap :delete => [
                  '~/Library/Preferences/com.mediaateller.Timings.plist',
                  '~/Library/Application Support/Timings',
                  '~/Library/Caches/com.mediaateller.timings',
                 ]
end
