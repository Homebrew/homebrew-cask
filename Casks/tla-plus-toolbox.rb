cask 'tla-plus-toolbox' do
  version '1.5.3'
  sha256 'a6cb45ec112930a208d63fe31f0f42f45e07c4bbdf977ffc9ef656269e9eb1d5'

  # github.com/tlaplus/tlaplus/releases/download was verified as official when first introduced to the cask
  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  appcast 'https://github.com/tlaplus/tlaplus/releases.atom',
          checkpoint: '63d6d8ff6410ea03083cd1ca9bc12668613fb43ae9935d6a2c89ba086e35f1c4'
  name 'TLA+ Toolbox'
  homepage 'https://lamport.azurewebsites.net/tla/toolbox.html'

  app 'TLA+ Toolbox.app'

  caveats do
    depends_on_java
  end
end
