cask 'timings' do
  version '2.4.4'
  sha256 '35627d1c6a46f600555fbefcfac8e2422932a651ec36717a2934146ac3acd719'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          :sha256 => '9188596cedaf92329471f37b8129d2facee6ca955378ea7c772bbd745fde272f'
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
