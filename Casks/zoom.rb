cask 'zoom' do
  version '1.1.5'
  sha256 'ab9584758d922f3fa2c607ae6bf58841969fdd5740ff17af76f41ecfd7c6ae11'

  url "http://www.logicalshift.co.uk/mac/Zoom-#{version}.dmg"
  appcast 'http://www.logicalshift.co.uk/unix/zoom/update.xml',
          checkpoint: '100f800b8d8508447fd6e2690ef28f2dfe6e96d37d697583a6efcfbdf5dfc7fa'
  name 'Zoom'
  homepage 'https://www.logicalshift.co.uk/unix/zoom/'

  app 'Zoom.app'
end
