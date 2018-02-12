cask 'tusk' do
  version '0.9.2'
  sha256 '1cf3c9001189ae35476c39177c0f3d65d45ce862074c5695cf591f7d27b3f36c'

  # github.com/klauscfhq/tusk was verified as official when first introduced to the cask
  url "https://github.com/klauscfhq/tusk/releases/download/v#{version}/tusk-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/tusk/releases.atom',
          checkpoint: '9c220a5c227a05323d07b05feff10dc094b567c87cf539e322d338a78ada9f27'
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
