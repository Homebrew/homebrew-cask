cask 'vorlon' do
  version '0.1.0'
  sha256 '0fe3026827e22c4296ecc9bd976ef7b1ff2d7e8de3fcfbc91567476afee6a7f1'

  url "http://vorlonjs.io/desktop/vorlon-desktop_#{version}.dmg"
  name 'Vorlon desktop'
  homepage 'http://vorlonjs.io/'

  app 'Vorlon desktop.app'
end
