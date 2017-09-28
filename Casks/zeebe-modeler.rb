cask 'zeebe-modeler' do
  version '0.1.0'
  sha256 '2d6d84667bd01e46c6df45a182b7cfdd746a6c3475217087524f7062f9aef017'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/#{version}/zeebe-modeler-darwin-x64.tar.gz"
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'zeebe-modeler/Zeebe Modeler.app'
end
