cask 'worksnaps-client' do
  version '1.1.20180604-2'
  sha256 'b0d72348faea0f0335f0eff1710a840c6035f124724059a4ae33b89eef9da895'

  # worksnaps-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://worksnaps-download.s3.amazonaws.com/WSClient-mac-10.9-#{version}.dmg"
  name 'Worksnaps Client'
  homepage 'https://www.worksnaps.net/www/'

  app 'Worksnaps Client.app'
end
