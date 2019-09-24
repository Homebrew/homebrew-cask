cask 'zeebe-modeler' do
  version '0.7.0'
  sha256 'a4080bac610ef5ead1789d7bd745f6f71e2f8d33aba1613eb493b37c5a3d992b'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'Zeebe Modeler.app'
end
