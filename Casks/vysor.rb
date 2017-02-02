cask 'vysor' do
  version '1.6.7'
  sha256 'c75f6c3f1e5b84141686c4214da91a409992f6c937521e821a77d83d6b548a2d'

  # github.com/koush/vysor.io was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac.zip"
  appcast 'https://github.com/koush/vysor.io/releases.atom',
          checkpoint: '0d2caa485689d7473f12c206dc29f93837facca857a60276e44b632dfa290766'
  name 'Vysor'
  homepage 'https://www.vysor.io'

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
