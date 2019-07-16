cask 'tableflip' do
  version '1.2.1'
  sha256 '1bda6ec5aa2db25b856527c6770c13e110df06866c0de40f91ed07023bf31625'

  # update.christiantietze.de/tableflip was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
