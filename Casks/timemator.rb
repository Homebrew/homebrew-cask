cask 'timemator' do
  version '2.0.1'
  sha256 '1225a71adb70004f14edb9c10d8e218a3ca38b7c85fbcea3535217b255d2cf0c'

  # catforce-timemator.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
