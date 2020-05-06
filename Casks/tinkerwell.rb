cask 'tinkerwell' do
  version '2.7.0'
  sha256 'ce6ef09d64c5b16a82d1f6f507a696e6c17bf7c47335438a73db44aaf3561e96'

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
