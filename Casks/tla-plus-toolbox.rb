cask 'tla-plus-toolbox' do
  version '1.5.4'
  sha256 '33b122e20b4b6474a2b4de6a8634ce5b090660f363bdde2e7990bd75f4366c63'

  # github.com/tlaplus/tlaplus/releases/download was verified as official when first introduced to the cask
  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/tlaplus/tlaplus/releases.atom',
          checkpoint: '189b5da1be2bfb55c188c83f42953aba71eb346895f09881ea93f35c02872065'
  name 'TLA+ Toolbox'
  homepage 'https://lamport.azurewebsites.net/tla/toolbox.html'

  app 'TLA+ Toolbox.app'

  caveats do
    depends_on_java
  end
end
