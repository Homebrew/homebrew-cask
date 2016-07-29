cask 'tifig' do
  version '0.3.0-201607151151'
  sha256 '694a1ae486b716e5afaf2ba5244987a672d7aa04432de82383002a43d74164c6'

  # tifig-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Tifig'
  homepage 'https://www.tifig.net'
  license :gratis

  depends_on arch: :x86_64

  app 'Tifig.app'
end
