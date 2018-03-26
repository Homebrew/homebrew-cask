cask 'tableflip' do
  version '1.1.7'
  sha256 'b57c5b41ea34d7c570136efd53bedc0cba4412bf8bf6f4343ccdc4d9259c1018'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml",
          checkpoint: '21f265db64c8a82f461240c5b51769b31945b9f623b8860a78cd6481278a0900'
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
