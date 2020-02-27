cask 'touch-bar-simulator' do
  if MacOS.version <= :high_sierra
    version '1.2.0'
    sha256 '4abe55de716ae56a41031cdb1d3b27bf6b1efae18b33b80bb0419669a9a76aa1'

    url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch-Bar-Simulator-#{version}.dmg"
  elsif MacOS.version <= :mojave
    version '3.2.0'
    sha256 'bdfaf740392bddb3e9b281a30efab27e03638d3428ba555650dca517153c13c6'
  else
    version '4.1.0'
    sha256 '95e098b5b78f5f3c2ab0e49d4c0341f9f71fdf87d2924c8c2af0e18073f311dd'
  end

  url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch.Bar.Simulator.#{version}.dmg"
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
