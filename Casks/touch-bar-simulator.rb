cask 'touch-bar-simulator' do
  version '1.1.0'
  sha256 'c90569301b783022372a2ab298c3c66422f6342ce7394f859fb8e357c40d81b2'

  url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch-Bar-Simulator-#{version}.dmg"
  appcast 'https://github.com/sindresorhus/touch-bar-simulator/releases.atom',
          checkpoint: 'fa23b23a47d65ba73e79edb980c77ae8d7f1b0fb5fc26010616503105444583b'
  name 'Touch Bar Simulator'
  homepage 'https://github.com/sindresorhus/touch-bar-simulator'

  depends_on macos: '>= :sierra'

  app 'Touch Bar Simulator.app'

  zap delete: [
                '~/Library/Caches/com.sindresorhus.Touch-Bar-Simulator',
                '~/Library/Cookies/com.sindresorhus.Touch-Bar-Simulator.binarycookies',
                '~/Library/Preferences/com.sindresorhus.Touch-Bar-Simulator.plist',
              ]
end
