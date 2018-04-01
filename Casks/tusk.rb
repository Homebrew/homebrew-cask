cask 'tusk' do
  version '0.9.3'
  sha256 '4058dd88b99591e460de57847258b7d3c9d2b0dd122f587fc39ecbba9fb11f6c'

  # github.com/klauscfhq/tusk was verified as official when first introduced to the cask
  url "https://github.com/klauscfhq/tusk/releases/download/v#{version}/tusk-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/tusk/releases.atom',
          checkpoint: 'c64e58762e41b63626a1d7d8da0d0fa462895a6f2fa3fdea7afee8e2c3fe0e83'
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
