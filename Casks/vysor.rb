cask 'vysor' do
  version '2.3.1'
  sha256 '171583308f72647c62f71f3571b8604dfce740dcaaabfe97938ec6d92145cf43'

  # github.com/koush/vysor.io was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/#{version}/Vysor-notarized-mac.zip"
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
