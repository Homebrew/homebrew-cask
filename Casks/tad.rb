cask 'tad' do
  version '0.8.3'
  sha256 '1ab122288b3a28247c14b7757a0c498fa318d47b6e6bf3c33051ebe8a5ea795b'

  # github.com/antonycourtney/tad was verified as official when first introduced to the cask
  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/tad-#{version}.dmg"
  appcast 'https://github.com/antonycourtney/tad/releases.atom',
          checkpoint: 'e9fa5bde4aef870bed82205196e5ee0990b155873c11597c3d5e84f54ece71ac'
  name 'Tad'
  homepage 'http://tadviewer.com/'

  app 'Tad.app'
end
