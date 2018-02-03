cask 'tribler' do
  version '7.0.0'
  sha256 '8ccdc62fc30609b092d83e029a48a0d6f8fc411c1b535c4e6c7aa422b7fe8dfd'

  # github.com/Tribler/tribler was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          checkpoint: '4506b719939cab9856167b4e91bfb4d8d0bff515a178248175ea976335e6f1b5'
  name 'Tribler'
  homepage 'https://www.tribler.org/'

  app 'Tribler.app'
end
