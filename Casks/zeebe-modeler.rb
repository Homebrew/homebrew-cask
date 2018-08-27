cask 'zeebe-modeler' do
  version '0.1.4'
  sha256 '42350c38fce8c0db169f234b180386e7537a23d2c1ece364f7bb6379a7e687ec'

  # github.com/zeebe-io/zeebe-modeler was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/#{version}/zeebe-modeler-darwin-x64.tar.gz"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'zeebe-modeler/Zeebe Modeler.app'
end
