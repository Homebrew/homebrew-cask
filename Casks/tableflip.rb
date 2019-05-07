cask 'tableflip' do
  version '1.2.0'
  sha256 '4da5f365d1e7023c13e391f668b0ccf16837a486e7b1df4c9f828656d1b1f832'

  # update.christiantietze.de/tableflip was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
