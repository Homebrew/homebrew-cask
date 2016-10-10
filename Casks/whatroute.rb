cask 'whatroute' do
  version '1.13.1'
  sha256 '34a37acea1285b6a2c28bc18b81974b1214fbbf019c0ef9fad32844bb780cc56'

  url "https://www.whatroute.net/software/whatroute-#{version}.dmg"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  app 'WhatRoute.app'
end
