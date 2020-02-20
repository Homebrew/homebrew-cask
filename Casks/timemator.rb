cask 'timemator' do
  version '2.1.2'
  sha256 '4fedfdfd9e5622f64af6ebbb238f6b62fc4315fb0f43e4e678e176a1e1e95df5'

  # catforce-timemator.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
