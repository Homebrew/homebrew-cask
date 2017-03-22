cask 'tableflip' do
  version '1.1.5'
  sha256 '06ca0b955335c4b7ffdcdceeed7a3aecf6cef6cb996b6dc222636ec04ab92218'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml",
          checkpoint: '0c5937b9dfa4b9cf2c0781d53b7f39e0f6385fedd9ebe8ef551dc26fb540ca3c'
  name 'TableFlip'
  homepage 'http://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
