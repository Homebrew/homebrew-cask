cask 'whatpulse' do
  version '2.8.3'
  sha256 'b5184481d783e13a1abedf94c0abce53554c18c852e6fdfc7a5a2041483b7777'

  url "https://static.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'https://whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
