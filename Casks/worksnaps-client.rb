cask 'worksnaps-client' do
  version '1.1.20171212'
  sha256 '4b8d5b6b79394ee4d74d070c1f15b1e88b69a4ff1fcd558186654e732df8467d'

  # worksnaps-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://worksnaps-download.s3.amazonaws.com/WSClient-mac-10.9-#{version}.dmg"
  name 'Worksnaps Client'
  homepage 'https://www.worksnaps.net/www/'

  app 'Worksnaps Client.app'
end
