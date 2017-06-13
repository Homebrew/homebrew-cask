cask 'tifig' do
  version '0.6.0-201705041302'
  sha256 'd3f865ca20ac3919be67da639af6fedef7ed87084713f88ff1e6e3e606ee4be4'

  # tifig-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://tifig-downloads.s3.amazonaws.com/tifig-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.tifig.net/download/',
          checkpoint: 'd1bc27d2d83cdecd4042d01da0ad91ae621dd120f4ba43eff15e1384f3207df0'
  name 'Tifig'
  homepage 'https://www.tifig.net/'

  app 'Tifig.app'
end
