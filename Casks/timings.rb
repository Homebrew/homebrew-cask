cask 'timings' do
  version '3.2.6'
  sha256 '13abf6d5411737472a2bd2bd2e121a8378d818c7f203b05753a0f68f2cf211b3'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php"
  name 'Timings'
  homepage 'https://www.mediaatelier.com/Timings3/'

  depends_on macos: '>= :mavericks'

  app 'Timings.app'

  zap trash: [
               '~/Library/Preferences/com.mediaateller.Timings.plist',
               '~/Library/Application Support/Timings',
               '~/Library/Caches/com.mediaateller.timings',
             ]
end
