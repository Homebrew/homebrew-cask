cask 'tribler' do
  version '6.5.0'
  sha256 'fccf9fdc8f905c2c2367a0c113d422c66ea2cabb1a200e63b9fd93b371009ac6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast 'https://github.com/Tribler/tribler/releases.atom',
          checkpoint: '859213c0a5a01de3749c3000c33696d2e74edeb91c97e50b49fb4455f11221fb'
  name 'Tribler'
  homepage 'https://www.tribler.org'
  license :gpl

  app 'Tribler.app'
end
