cask 'tusk' do
  version '0.11.0'
  sha256 '1970b34f42ec1ba59bb6e5cef6015e6184fc650f49fad242f30b3d5b973e2b39'

  # github.com/klauscfhq/tusk was verified as official when first introduced to the cask
  url "https://github.com/klauscfhq/tusk/releases/download/v#{version}/tusk-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/tusk/releases.atom',
          checkpoint: '59ae315fe80a7ef969c7f96628455b179ed3883c104a5d9a15d30330f4c259ea'
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
