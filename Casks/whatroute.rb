cask 'whatroute' do
  version '2.0.13'
  sha256 '920c088f9c0b80b78eb632c64119c81096497536ca62e4ce428516c3471be5c5'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  depends_on macos: '>= :yosemite'

  app 'WhatRoute.app'
end
