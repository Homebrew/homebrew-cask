cask 'tableflip' do
  version '1.1.8'
  sha256 '0e1e735c90c36ea7e595a915ad974975879785dc79383e0386f866ceb67a5bef'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml"
  name 'TableFlip'
  homepage 'https://tableflipapp.com/'

  auto_updates true

  app 'TableFlip.app'
end
