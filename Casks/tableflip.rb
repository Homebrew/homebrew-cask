cask 'tableflip' do
  version '1.1.11'
  sha256 '18c40cd0c210b314d9a164a98448a9efdfd2810308b30072098602e46efe8dac'

  # update.christiantietze.de/tableflip was verified as official when first introduced to the cask
  url "https://update.christiantietze.de/tableflip/v#{version.major}/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
