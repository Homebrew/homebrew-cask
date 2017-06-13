cask 'thington' do
  version '0.0.15'
  sha256 'af93c83a61254d112ddaad49ee14060f3e0ec8552ddec8e6f55805ce98d96d6f'

  # thington-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://thington-download.s3.amazonaws.com/Thington.app.v#{version}.zip"
  name 'Thington'
  homepage 'https://thington.com/wemo'

  app 'Thington.app'
end
