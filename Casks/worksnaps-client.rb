cask 'worksnaps-client' do
  version '1.1.20190325'
  sha256 'b09fd6e0e6a3c79f29a34d978e5e9232d088ad0268cf8cc8c6d6b3b041370fc5'

  # worksnaps-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://worksnaps-download.s3.amazonaws.com/WSClient-mac-10.9-#{version}.dmg"
  appcast 'https://www.worksnaps.net/www/download.shtml'
  name 'Worksnaps Client'
  homepage 'https://www.worksnaps.net/www/'

  app 'Worksnaps Client.app'
end
