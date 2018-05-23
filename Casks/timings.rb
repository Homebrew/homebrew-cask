cask 'timings' do
  version '3.2.1'
  sha256 '383a46f6610843bd2d0492214f79111662e25767ca800a79e65f02b72b9904a0'

  url "https://mediaatelier.com/Timings#{version.major}/Timings_#{version}.zip"
  appcast "https://mediaatelier.com/Timings#{version.major}/feed.php",
          checkpoint: '7630185bb7d021568437dc4c35ae01ab4afd1dc812432db315772f11384148b4'
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
