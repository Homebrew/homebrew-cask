cask 'zeebe-modeler' do
  version '0.8.0'
  sha256 '76b6ae41ea5001aee3ea284d3db0486709e79d21310c73c02dadd1d373b9d6ea'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'Zeebe Modeler.app'
end
