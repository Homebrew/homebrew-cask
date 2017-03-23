cask 'tifig' do
  version '0.5.0-201703231706'
  sha256 'a31c3ed704a2b03b50e6c9acaf05baac84ef3568bb8e22ecb715d22d6113b3d8'

  # tifig-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.tifig.net/download/',
          checkpoint: 'efc2bf8825f0dba8ddce55d6d5a6d6521f8696f7e0c4a4eef43b1c13087f0e1c'
  name 'Tifig'
  homepage 'https://www.tifig.net/'

  app 'Tifig.app'
end
