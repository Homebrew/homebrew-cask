cask 'timings' do
  version '3.1.2'
  sha256 '90f7ad5291f7aa5d5d28511be3fc883e5ce7d1efef204dba0c6038b6195a67f2'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: '151ec23863a69095bf136d81d32a2911d25fcb01111cec4b6e4fbaaeb16c4f50'
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
