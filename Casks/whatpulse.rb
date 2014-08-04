class Whatpulse < Cask
  version '2.4'
  sha256 'baa7f17829cf70241845642891bceb4c4e4f276152a90e804eb271bdf1ffdbe8'

  url 'http://amcdn.whatpulse.org/files/whatpulse-mac-2.4.dmg'
  homepage 'http://www.whatpulse.org/'

  install 'WhatPulse 2.4.mpkg'
  uninstall :files => [
                       '/Applications/WhatPulse.app',
                       '/Library/StartupItems/ChmodBPF'
                      ],
            :quit  => 'com.whatpulse.mac'
end
