cask 'timings' do
  version '3.2.3'
  sha256 '284f9633808170fb630ce1a57482a7a580fecc4575933f9671f570e44d587672'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: '7073236fae20b3db2e6b18e3d696782c36d2b3d97f1575aca9e91e0b7d2d4fb7'
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
