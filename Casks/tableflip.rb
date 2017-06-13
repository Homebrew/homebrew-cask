cask 'tableflip' do
  version '1.1.6'
  sha256 '6a2f67176bc545834c35eb247494373b14031c361189cd170933ea0a5ba6ca48'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml",
          checkpoint: 'e881fb683ddad4ca7408759a2a59db55c08f775785d157e4ad6dde403d8d4a6c'
  name 'TableFlip'
  homepage 'http://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
