cask 'whatpulse' do
  version '2.8.4'
  sha256 '68b3caf929e99d87d0344d344a9e104a5c3c601ef8dc2bbdf5275cfb1c2f8e3f'

  url "https://static.whatpulse.org/files/whatpulse-mac-#{version}.dmg"
  appcast 'https://static.whatpulse.org/etc/version-info.php'
  name 'WhatPulse'
  homepage 'https://whatpulse.org/'

  installer manual: "WhatPulse #{version}.mpkg"

  uninstall pkgutil: 'com.lostdomain.whatpulse',
            quit:    'com.whatpulse.mac'
end
