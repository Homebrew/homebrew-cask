cask 'tiled' do
  version '1.2.3'
  sha256 '07fbfd3a035117763745eb42bca6f6255deb7abfcc3dc47ea60d15e3a4ec1aa1'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  app 'Tiled.app'
end
