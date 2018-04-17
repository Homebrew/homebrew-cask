cask 'veusz' do
  version '2.2.1'
  sha256 'b1a74272bd87198843fabae8631fe97ab7fff8964012281ae7378678785ecb54'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom',
          checkpoint: '31445859330d1b3697141a808cb3fbabd0a46ff5b23c89e3cf67ad6b972682ed'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
