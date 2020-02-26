cask 'timemator' do
  version '2.2'
  sha256 '0318e8c0c2c4c0b2f4ab9a9ed8b3eab2127526c2029efbb55793c4f574926cb1'

  # catforce-timemator.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
