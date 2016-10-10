cask 'whatpulse' do
  version '2.7.1'
  sha256 '1fba8223d08056cc0ba6d7a3b647cbd581cd8808bf4e2d91ac666a6ee39f9747'

  url "http://amcdn.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'http://www.whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
