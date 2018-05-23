cask 'tla-plus-toolbox' do
  version '1.5.6'
  sha256 'bd8419ceffd82a848ff28cad34c825720a677c58b9eae443d9e529727abbf4cf'

  # github.com/tlaplus/tlaplus/releases/download was verified as official when first introduced to the cask
  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/tlaplus/tlaplus/releases.atom',
          checkpoint: '85dc89cebceb8215158c150f9efefd15c9c4557f7f1164fc80435405b209c701'
  name 'TLA+ Toolbox'
  homepage 'https://lamport.azurewebsites.net/tla/toolbox.html'

  app 'TLA+ Toolbox.app'

  caveats do
    depends_on_java
  end
end
