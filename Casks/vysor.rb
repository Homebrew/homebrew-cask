cask 'vysor' do
  version '1.8.3'
  sha256 '7a8622b187fd69338ef9f21e7b9655b599c65800b84a25af49b3fd1948fcd060'

  # github.com/koush/vysor.io was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/#{version}/Vysor-mac.zip"
  appcast 'https://github.com/koush/vysor.io/releases.atom',
          checkpoint: '5224bbe15b9e8da3b5ca918782a8bac14f9a99781cffe81e74bc2a704fa41955'
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
