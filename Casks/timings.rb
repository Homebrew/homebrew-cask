cask 'timings' do
  version '2.4.8'
  sha256 'd569aaa064557fa31654826e083a295b3199a17f845f11b48da54b3d304e140b'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          checkpoint: '849b39da0e118572475b2089f9e3d68b08b531c490b35a18f294a763a270e444'
  name 'Timings'
  homepage 'https://mediaatelier.com/Timings'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Timings.app'

  zap delete: [
                '~/Library/Preferences/com.mediaateller.Timings.plist',
                '~/Library/Application Support/Timings',
                '~/Library/Caches/com.mediaateller.timings',
              ]
end
