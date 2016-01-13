cask 'zoom' do
  version '1.1.5'
  sha256 'ab9584758d922f3fa2c607ae6bf58841969fdd5740ff17af76f41ecfd7c6ae11'

  url "http://www.logicalshift.co.uk/mac/Zoom-#{version}.dmg"
  appcast 'http://www.logicalshift.co.uk/unix/zoom/update.xml',
          :checkpoint => 'd65d27c2e458bc2edf3c4d69dfa90335a71d01932570bdb2bdb1caa6c9547e8f'
  name 'Zoom'
  homepage 'http://www.logicalshift.co.uk/unix/zoom/'
  license :gpl

  app 'Zoom.app'
end
