cask :v1 => 'timings' do
  version '2.4.3'
  sha256 '2007794e42d30b9428716272c7fc9c62354553f9535059bcae12e436929dc280'

  url "http://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'http://mediaatelier.com/Timings2/feed.php',
          :sha256 => '6efe27fb9d44450a8a67d9bcbb746aae1b6b6f1d65358019f13150dc6a7d7a5e'
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
