cask 'vysor' do
  version '2.1.1'
  sha256 '40f86a4781585f2aeb5a7ffbf8efaf6d1a52b960b2afbf973c719d0ea65da36d'

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
