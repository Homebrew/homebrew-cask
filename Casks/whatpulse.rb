cask 'whatpulse' do
  version '2.6'
  sha256 '90fecfd945d78b2b38900765a16f0a6d1114badd636629b45cf0f59d585b130b'

  url "http://amcdn.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'http://www.whatpulse.org/'
  license :gratis

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
