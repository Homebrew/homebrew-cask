cask 'whatroute' do
  if MacOS.version <= :mavericks
    version '1.13.3'
    sha256 'bc8a4612dcd2d64758dbb2714de60dd95907744cc59dd771a0be29bd56d81e5a'

  else
    version '2.0.13'
    sha256 '920c088f9c0b80b78eb632c64119c81096497536ca62e4ce428516c3471be5c5'
  end

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  depends_on macos: '>= :yosemite'

  app 'WhatRoute.app'
end
