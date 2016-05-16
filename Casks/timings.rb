cask 'timings' do
  version '2.4.6'
  sha256 '71e6d52238da8606005ac47299c40be6138e4de0f1374cfe76ea3ac3ee5ca6c1'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          checkpoint: '252f5a8a3972ea6b0e6c494bf310df48898b3404b9506ac2e518775bb452f7cb'
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
