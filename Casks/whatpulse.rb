cask 'whatpulse' do
  version '2.7'
  sha256 'baa7c8ed6b7eec18c6f9c42983b8e95e0df73f4364ae3613c4bc946e5f0a7658'

  url "http://amcdn.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  name 'WhatPulse'
  homepage 'http://www.whatpulse.org/'
  license :gratis

  pkg "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
