class Whatpulse < Cask
  url 'http://amcdn.whatpulse.org/files/whatpulse-mac-2.3.1.dmg'
  homepage 'http://www.whatpulse.org/'
  version '2.3.1'
  sha256 '235078d0bfb7021667182fa14d5245ea7045ae11ee4bd80e9a2a20e8485b4fc3'
  install 'WhatPulse 2.3.1.mpkg'
  uninstall(
    :files => ['/Applications/WhatPulse.app', '/Library/StartupItems/ChmodBPF'],
    :quit => 'com.whatpulse.mac'
  )
end
