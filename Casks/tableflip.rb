cask 'tableflip' do
  version '1.2.2'
  sha256 '009a005c7a1d41d120a9e3d5b819db98e6ca5afdfd065926c8dbf032b20ae6f0'

  # update.christiantietze.de/tableflip was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
