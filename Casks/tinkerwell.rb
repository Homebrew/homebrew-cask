cask 'tinkerwell' do
  version '2.8.3'
  sha256 '9e9269e6b8b7cc9ccccf9705080b8f414ef7a690b87775f181a600c09157fb68'

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
