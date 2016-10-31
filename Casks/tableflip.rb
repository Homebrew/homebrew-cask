cask 'tableflip' do
  version '1.1.3'
  sha256 '7670584f0177582b18f0f04ba483300639fa2d19cc1f30a5030646a1967f6014'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast 'https://update.christiantietze.de/tableflip/v1/release.xml',
          checkpoint: 'df87f5df3dd31b2401c0510643dd811bf44ac5f63215cc87b411e4c1173fa4b4'
  name 'TableFlip'
  homepage 'http://tableflipapp.com'

  auto_updates true

  app 'TableFlip.app'
end
