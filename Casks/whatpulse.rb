cask 'whatpulse' do
  version '2.8.1'
  sha256 'e9b0435874830fb9de0ee32411e918e12a8651c0e676daf9eccf84946d8ffd6d'

  url "https://static.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'https://whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
