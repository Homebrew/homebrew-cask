cask 'wootility' do
  version '1.0.4'
  sha256 '954d0ed80aaf8fadf579312d9e3cb48a9443edf0d1ec16a438b15e2ea1ad89fa'

  # s3.eu-west-2.amazonaws.com/wooting-update was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/wooting-update/wootility-#{version}.dmg"
  name 'Wootility'
  homepage 'https://wooting.nl/wootility/'

  app 'Wootility.app'
end
