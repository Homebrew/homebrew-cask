cask 'tla-plus-toolbox' do
  version '1.6.0'
  sha256 'ecf63a0676f381946e4438032b9ce97481a3dc89114713bab566585be28f1507'

  # github.com/tlaplus/tlaplus was verified as official when first introduced to the cask
  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/tlaplus/tlaplus/releases.atom'
  name 'TLA+ Toolbox'
  homepage 'https://lamport.azurewebsites.net/tla/toolbox.html'

  app 'TLA+ Toolbox.app'
end
