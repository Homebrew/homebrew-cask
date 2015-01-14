cask :v1 => 'whatpulse' do
  version '2.5'
  sha256 '415ed3d29aa233b1dc77653a29be2191a91687a04f96a43b94012377c9e5e933'

  url "http://amcdn.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  homepage 'http://www.whatpulse.org/'
  license :gratis

  pkg "WhatPulse #{version}.mpkg"

  uninstall :pkgutil => 'com.lostdomain.whatpulse',
            :quit   => 'com.whatpulse.mac'
end
