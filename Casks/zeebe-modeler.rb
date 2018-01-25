cask 'zeebe-modeler' do
  version '0.1.1'
  sha256 '5f9f31b04c2953cdac261f78d0807de22aaebedd663c2ccfa77205001ab960e2'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/#{version}/zeebe-modeler-darwin-x64.tar.gz"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom',
          checkpoint: 'cbe7ee398f6ac3ae2a0c7f0ac2e0974f719871f662a6fad1a7d532ecb3f38661'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'zeebe-modeler/Zeebe Modeler.app'
end
