cask 'vysor' do
  version '2.1.0'
  sha256 '5ce115e2d59aa77214af9da8266ab22432191a5c6f8c5cd8bf51c7b2d8caa100'

  # github.com/koush/vysor.io was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/#{version}/Vysor-mac.zip"
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
