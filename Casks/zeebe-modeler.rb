cask 'zeebe-modeler' do
  version '0.1.0'
  sha256 '2d6d84667bd01e46c6df45a182b7cfdd746a6c3475217087524f7062f9aef017'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/#{version}/zeebe-modeler-darwin-x64.tar.gz"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom',
          checkpoint: 'a6fd861e57d3b58668b4cc1615b60c203cb4d229c24fc5c1035a993925083034'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'zeebe-modeler/Zeebe Modeler.app'
end
