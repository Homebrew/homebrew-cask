cask 'tusk' do
  version '0.22.0'
  sha256 '79f54495ac39996820a269b6d4d82a9a010b1ae1c7408155b8b3aabe1b69a380'

  # github.com/klaussinani/tusk was verified as official when first introduced to the cask
  url "https://github.com/klaussinani/tusk/releases/download/v#{version}/Tusk-#{version}.dmg"
  appcast 'https://github.com/klaussinani/tusk/releases.atom'
  name 'Tusk'
  homepage 'https://klaussinani.github.io/tusk/'

  app 'Tusk.app'

  zap trash: [
               '~/.tusk.json',
               '~/Library/Application Support/Tusk',
               '~/Library/Preferences/com.electron.tusk.plist',
               '~/Library/Preferences/com.electron.tusk.helper.plist',
               '~/Library/Saved Application State/com.electron.tusk.savedState',
             ]
end
