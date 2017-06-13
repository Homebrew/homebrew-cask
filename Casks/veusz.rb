cask 'veusz' do
  version '1.26'
  sha256 'fb45ee123f3d780bf29a3018b732af6733525aa07b8985fcb45aa5e234b172a3'

  url "http://download.gna.org/veusz/Binaries-AppleOSX/veusz-#{version}-AppleOSX.dmg"
  appcast 'http://download.gna.org/veusz/Binaries-AppleOSX/',
          checkpoint: 'a4bf7fdb89449897f81e4d3324a66ea87a733b37eae4455d6a463fa07428459e'
  name 'Veusz'
  homepage 'http://home.gna.org/veusz/'

  app 'Veusz.app'
end
