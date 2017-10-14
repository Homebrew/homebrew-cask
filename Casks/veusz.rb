cask 'veusz' do
  version '2.0.1'
  sha256 'dbf5a1c9ae26f2a40e05bf1afd537ad4927ab41c15a0ad4d717a216909f37ceb'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom',
          checkpoint: '0467aa1c96bee854e07fbeacb97232e73daa2d15921050f2f850935ea85e292b'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
