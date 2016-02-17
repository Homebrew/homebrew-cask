cask 'timings' do
  version '2.4.5'
  sha256 'c3278597431f8043e82e48263185832c123baa2c7e7fb97c7377b4fd2fe28f06'

  url "https://mediaatelier.com/Timings2/Timings_#{version}.zip"
  appcast 'https://mediaatelier.com/Timings2/feed.php',
          checkpoint: '30e7d30ed16d5be28b3f84beb494badad506a175041cedb45a56e4b4e989e735'
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
