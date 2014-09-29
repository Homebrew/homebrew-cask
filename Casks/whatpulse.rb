class Whatpulse < Cask
  version '2.4'
  sha256 'baa7f17829cf70241845642891bceb4c4e4f276152a90e804eb271bdf1ffdbe8'

  url "http://amcdn.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  homepage 'http://www.whatpulse.org/'

  pkg "WhatPulse #{version}.mpkg"
  uninstall :pkgutil => 'com.lostdomain.whatpulse',
            :quit   => 'com.whatpulse.mac'
end
