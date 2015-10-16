cask :v1 => 'zoom' do
  version '1.1.5'
  sha256 'ab9584758d922f3fa2c607ae6bf58841969fdd5740ff17af76f41ecfd7c6ae11'

  url "http://www.logicalshift.co.uk/mac/Zoom-#{version}.dmg"
  name 'Zoom'
  appcast 'http://www.logicalshift.co.uk/unix/zoom/update.xml',
          :sha256 => '0773a3313d093df2e8bbd1a71947f0f3fd1ff0fead851eb309c43d6234811b20'
  homepage 'http://www.logicalshift.co.uk/unix/zoom/'
  license :gpl

  app 'Zoom.app'
end
