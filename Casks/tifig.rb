cask 'tifig' do
  version '0.2.0-201606021314'
  sha256 '83b1add057e8789349c2f55b28dcd1d8454c23e58b417339e6ffaa7b91e15563'

  # tifig-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Tifig'
  homepage 'https://www.tifig.net'
  license :gratis

  depends_on arch: :x86_64

  app 'Tifig.app'
end
