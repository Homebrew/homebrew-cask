cask 'zeebe-modeler' do
  version '0.6.2'
  sha256 '04bfe8afd7595825451cc65929705d529afccf0deb85b2f5868bfa27564733ee'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'Zeebe Modeler.app'
end
