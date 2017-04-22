cask 'vysor' do
  version '1.7.3'
  sha256 'bce80d4b5e27d1698e974de42372125419ad0fd06e8b339d039e93e2c0af41a1'

  # github.com/koush/vysor.io was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac.zip"
  appcast 'https://github.com/koush/vysor.io/releases.atom',
          checkpoint: '76c3b4c7924032bcd52ea262756145fd0c2864f0afa8f08d9aa2167e3699234c'
  name 'Vysor'
  homepage 'https://www.vysor.io/'

  app 'Vysor.app'

  zap delete: [
                '~/Library/Application Support/Vysor',
                '~/Library/Caches/com.electron.vysor',
                '~/Library/Caches/com.electron.vysor.ShipIt',
                '~/Library/Preferences/com.electron.vysor.plist',
                '~/Library/Preferences/com.electron.vysor.helper.plist',
                '~/Library/Saved Application State/com.electron.vysor.savedState',
              ]
end
