cask 'tableflip' do
  version '1.0.1'
  sha256 '7772c77a653e957ec8d449b24df3b247284e7ee309a2dd82bce37a729f98da8b'

  # s3.amazonaws.com/tableflip was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tableflip/TableFlip-v#{version}.zip"
  name 'TableFlip'
  homepage 'http://tableflipapp.com'
  license :commercial

  app 'TableFlip.app'
end
