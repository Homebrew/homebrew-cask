cask 'worksnaps-client' do
  version '1.1.20170312-2'
  sha256 'eb19d50ec2d0ff26d0275a9eadac2872fc00c58faa3281ba9f110a1ae50c97d3'

  # worksnaps-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://worksnaps-download.s3.amazonaws.com/WSClient-mac-10.9-#{version}.dmg"
  name 'Worksnaps Client'
  homepage 'https://www.worksnaps.net/www/'

  app 'Worksnaps Client.app'
end
