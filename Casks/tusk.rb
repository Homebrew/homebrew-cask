cask 'tusk' do
  version '0.18.0'
  sha256 '173d94e7d16780996d8dc7e78eb7fff3f19e0fc1e29f7d3866e26d44fdb5fc3c'

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
