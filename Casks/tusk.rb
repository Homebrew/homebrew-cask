cask 'tusk' do
  version '0.21.0'
  sha256 '466446ed79416205f8acd9e27fc86cda5439c6c14a10d50477b90837ece42977'

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
