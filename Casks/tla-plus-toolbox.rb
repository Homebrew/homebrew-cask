cask 'tla-plus-toolbox' do
  version '1.5.7'
  sha256 '0e732bf865ba6fc6f95c5ef8ee5c2bb9d85455b149d4cd4f36ed3dca4da7a4d5'

  # github.com/tlaplus/tlaplus was verified as official when first introduced to the cask
  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/tlaplus/tlaplus/releases.atom'
  name 'TLA+ Toolbox'
  homepage 'https://lamport.azurewebsites.net/tla/toolbox.html'

  app 'TLA+ Toolbox.app'

  caveats do
    depends_on_java
  end
end
