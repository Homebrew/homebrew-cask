cask 'vysor' do
  version '1.8.2'
  sha256 '6cfe7409a5f31bf3dd29b35a3d6dcdd37595aee5417ffb64c6dfd13fbb99a3af'

  # github.com/koush/vysor.io was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac.zip"
  appcast 'https://github.com/koush/vysor.io/releases.atom',
          checkpoint: '16574e5b6b3dc897079babc6444a4e591660429c108cf3b4cb5e67ac2d653aa0'
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
