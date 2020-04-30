cask 'zeebe-modeler' do
  version '0.9.1'
  sha256 '773b4caef62317d2500499af299e8c35d560972b68780d9f36e659864959931c'

  # github.com/zeebe-io/zeebe-modeler/ was verified as official when first introduced to the cask
  url "https://github.com/zeebe-io/zeebe-modeler/releases/download/v#{version}/zeebe-modeler-#{version}-mac.zip"
  appcast 'https://github.com/zeebe-io/zeebe-modeler/releases.atom'
  name 'Zeebe Modeler'
  homepage 'https://zeebe.io/'

  app 'Zeebe Modeler.app'
end
