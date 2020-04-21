cask 'zeebe-modeler' do
  version '0.9.0'
  sha256 '0e5635e92d0301de2c5c41ddf34faf0f647d62586ae3d16941b4d661951bee32'

  # github.com/zeebe-io/zeebe-modeler/ was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'Zeebe Modeler.app'
end
