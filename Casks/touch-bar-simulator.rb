cask 'touch-bar-simulator' do
  if MacOS.version <= :high_sierra
    version '1.2.0'
    sha256 '4abe55de716ae56a41031cdb1d3b27bf6b1efae18b33b80bb0419669a9a76aa1'
    url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch-Bar-Simulator-#{version}.dmg"
  else
    version '2.0.0'
    sha256 '662b4e847f05b63ee04378fcd128c467d72d7d14f755557472899a9dd2267fd9'
    url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch.Bar.Simulator.#{version}.dmg"
  end

  appcast 'https://github.com/sindresorhus/touch-bar-simulator/releases.atom'
  name 'Touch Bar Simulator'
  homepage 'https://github.com/sindresorhus/touch-bar-simulator'

  depends_on macos: '>= :sierra'

  app 'Touch Bar Simulator.app'

  zap trash: [
               '~/Library/Caches/com.sindresorhus.Touch-Bar-Simulator',
               '~/Library/Cookies/com.sindresorhus.Touch-Bar-Simulator.binarycookies',
               '~/Library/Preferences/com.sindresorhus.Touch-Bar-Simulator.plist',
             ]
end
