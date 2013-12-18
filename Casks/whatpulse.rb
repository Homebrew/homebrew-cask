class Whatpulse < Cask
  url 'http://amcdn.whatpulse.org/files/whatpulse-mac-2.3.1.dmg'
  homepage 'http://www.whatpulse.org/'
  version '2.3.1'
  sha1 'ad59de9d132fe7978cdd46ddaa5ccf7f62234296'
  install 'WhatPulse 2.3.1.mpkg'
  uninstall(
    :files => ['/Applications/WhatPulse.app', '/Library/StartupItems/ChmodBPF'],
    :quit => 'com.whatpulse.mac'
  )
end
