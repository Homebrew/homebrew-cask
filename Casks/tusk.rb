cask 'tusk' do
  version '0.7.0'
  sha256 '005329655d506f3563e6ecf49174fa15bbf649a5219cb89e7ce13fe54baa37bc'

  url "https://github.com/klauscfhq/tusk/releases/download/v#{version}/tusk-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/tusk/releases.atom',
          checkpoint: '5ac7ede64bda3686a38ae57f3d306874058f290288e224aa21be74f64bf2174b'
  name 'Tusk'
  homepage 'https://github.com/klauscfhq/tusk'

  app 'Tusk.app'
end
