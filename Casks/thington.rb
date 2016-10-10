cask 'thington' do
  version '0.0.14'
  sha256 '2bbac70020c7fed69a942af49d6cdbe678c11e218127d216343c065d985abf54'

  # thington-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://thington-download.s3.amazonaws.com/Thington.app.v#{version}.zip"
  name 'Thington'
  homepage 'https://thington.com/wemo'

  app 'Thington.app'
end
