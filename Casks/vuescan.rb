cask 'vuescan' do
  version '9.5.81'
  sha256 'dae617a7e60fec6c090f4308bc58d569dbfb86d0291c0ecc9bbb6b20b8fac6d7'

  url "https://www.hamrick.com/files/vuex64#{version.major_minor.no_dots}.dmg"
  appcast 'https://www.hamrick.com/old-versions.html',
          checkpoint: '6d28f18e975e33d901556a7f3effcf540c0671f9d30744a34f92f66ec9eb5837'
  name 'VueScan'
  homepage 'https://www.hamrick.com/'

  app 'VueScan.app'
end
