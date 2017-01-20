cask 'whatroute' do
  if MacOS.version <= :mavericks
    version '1.13.3'
    sha256 'bc8a4612dcd2d64758dbb2714de60dd95907744cc59dd771a0be29bd56d81e5a'

  else
    version '2.0.12'
    sha256 'd2186d8064eb851a9a6b1d3feafaf78959f0043e9a64317aa6c1a475d5d4125d'
  end

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  app 'WhatRoute.app'
end
