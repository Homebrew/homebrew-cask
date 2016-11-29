cask 'tableflip' do
  version '1.1.4'
  sha256 'feb5f11017e6983f1d4136ca31d251ddff86c42b0f5e990aeff6809fb85ce713'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  appcast "https://update.christiantietze.de/tableflip/v#{version.major}/release.xml",
          checkpoint: 'df87f5df3dd31b2401c0510643dd811bf44ac5f63215cc87b411e4c1173fa4b4'
  name 'TableFlip'
  homepage 'http://tableflipapp.com'

  auto_updates true

  app 'TableFlip.app'
end
