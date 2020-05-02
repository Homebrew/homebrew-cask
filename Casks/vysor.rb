cask 'vysor' do
  version '3.0.44'
  sha256 'accff19442a3a109dbf0a358110b71b9d4b9389e95c7403e13089be893fc3cd7'

  # github.com/koush/vysor.io/ was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip"
  appcast 'https://github.com/koush/vysor.io/releases.atom'
  name 'Vysor'
  homepage 'https://www.vysor.io/'

  app 'Vysor.app'

  zap trash: [
               '~/Library/Application Support/Vysor',
               '~/Library/Caches/com.electron.vysor',
               '~/Library/Caches/com.electron.vysor.ShipIt',
               '~/Library/Preferences/com.electron.vysor.plist',
               '~/Library/Preferences/com.electron.vysor.helper.plist',
               '~/Library/Saved Application State/com.electron.vysor.savedState',
             ]
end
