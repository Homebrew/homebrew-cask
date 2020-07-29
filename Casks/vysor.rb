cask 'vysor' do
  version '3.0.87'
  sha256 '6f9fa2cde1b641b7fba9c42b0828906f66f398e1b57c2da2c0e00239aee8803c'

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
