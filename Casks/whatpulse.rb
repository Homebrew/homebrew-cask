cask :v1 => 'whatpulse' do
  version '2.4.1'
  sha256 '877a2feb8a916ee4de637cc0839399e9c240bdd3e6a96beb8dd66edb49ffec74'

  url "http://amcdn.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  homepage 'http://www.whatpulse.org/'
  license :unknown

  pkg "WhatPulse #{version}.mpkg"

  uninstall :pkgutil => 'com.lostdomain.whatpulse',
            :quit   => 'com.whatpulse.mac'
end
