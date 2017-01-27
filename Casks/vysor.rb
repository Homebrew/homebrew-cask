cask 'vysor' do
  version :latest
  sha256 :no_check

  # vysornuts.clockworkmod.com was verified as official when first introduced to the cask
  url 'https://vysornuts.clockworkmod.com/download/osx.zip'
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
