cask 'tinkerwell' do
  version '2.8.1'
  sha256 'cb31fd29dcf57306374302afdf3ba9880f85e0efb2af8be5f1f8a8df9cd59f5a'

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
