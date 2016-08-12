cask 'timings' do
  version '2.4.7'
  sha256 '5c014e6e2b2ed85641bd4f4bef37b9267e41b17ac93171cfb8d56be46e005774'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          checkpoint: '44935a9c9cc29e9e4df5f81cbfeff134a4dfac8100b7985675738f318c8ebdf4'
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
