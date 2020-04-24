cask 'tinkerwell' do
  version '2.6.0'
  sha256 '390550d9cd65b6ab0c32533e23f0a7638403d4c28327a1e4c79089fca507d5dd'

  # tinkerwell.fra1.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://tinkerwell.fra1.digitaloceanspaces.com/tinkerwell/Tinkerwell-#{version}.dmg"
  appcast 'https://tinkerwell.fra1.digitaloceanspaces.com/tinkerwell/latest-mac.yml'
  name 'Tinkerwell'
  homepage 'https://tinkerwell.app/'

  app 'Tinkerwell.app'

  zap trash: [
               '~/.config/tinkerwell',
               '~/Library/Application Support/Tinkerwell',
               '~/Library/Logs/Tinkerwell',
               '~/Library/Preferences/de.beyondco.tinkerwell.plist',
               '~/Library/Saved Application State/de.beyondco.tinkerwell.savedState',
             ]
end
