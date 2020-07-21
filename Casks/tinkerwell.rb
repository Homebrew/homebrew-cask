cask 'tinkerwell' do
  version '2.8.4'
  sha256 'de4db639cce79de5fcf869f39481cc44e15fdc5277c83f1f8f457a1fae6f487a'

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
