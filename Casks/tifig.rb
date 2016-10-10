cask 'tifig' do
  version '0.4.0-201609230646'
  sha256 '9835efb6d4e7931a83fe0eb860ab45cbdb8d3178815d7076212a6bc70af4ba0e'

  # tifig-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Tifig'
  homepage 'https://www.tifig.net'

  depends_on arch: :x86_64

  app 'Tifig.app'
end
