cask 'timemator' do
  version '2.1.0'
  sha256 '4d8ce848f4c38c61502526767e57b731c1e5479583d76011483b89bad5c4a8e7'

  # catforce-timemator.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
