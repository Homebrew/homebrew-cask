cask 'tad' do
  version '0.8.4'
  sha256 'b33e31d9f3ca4c45ecf382cfdc28cb37d1f0d5d38ed0afc2f99226b0eca23bf2'

  # github.com/antonycourtney/tad was verified as official when first introduced to the cask
  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/tad-#{version}.dmg"
  appcast 'https://github.com/antonycourtney/tad/releases.atom',
          checkpoint: 'f4225bce372de45c0369167b06084ef971a3344597b9a67ab7d74c6a7604b1b2'
  name 'Tad'
  homepage 'http://tadviewer.com/'

  app 'Tad.app'
end
