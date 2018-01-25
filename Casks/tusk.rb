cask 'tusk' do
  version '0.7.0'
  sha256 '005329655d506f3563e6ecf49174fa15bbf649a5219cb89e7ce13fe54baa37bc'

  # github.com/klauscfhq/tusk was verified as official when first introduced to the cask
  url "https://github.com/klauscfhq/tusk/releases/download/v#{version}/tusk-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/tusk/releases.atom',
          checkpoint: '5ac7ede64bda3686a38ae57f3d306874058f290288e224aa21be74f64bf2174b'
  name 'Tusk'
  homepage 'https://klauscfhq.github.io/tusk/'

  app 'Tusk.app'

  zap trash: [
               '~/.tusk.json',
               '~/Library/Application Support/Tusk',
               '~/Library/Preferences/com.electron.tusk.plist',
               '~/Library/Preferences/com.electron.tusk.helper.plist',
               '~/Library/Saved Application State/com.electron.tusk.savedState',
             ]
end
