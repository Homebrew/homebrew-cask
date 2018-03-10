cask 'whatpulse' do
  version '2.8.2'
  sha256 '7f4be7d68e068d2bcaaae9e29de42501bb20cc64a03836d241292e46c1ae4bf7'

  url "https://static.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'https://whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
