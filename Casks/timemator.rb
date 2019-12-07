cask 'timemator' do
  version '2.0.1'
  sha256 '1225a71adb70004f14edb9c10d8e218a3ca38b7c85fbcea3535217b255d2cf0c'

  # s3-eu-west-1.amazonaws.com/catforce-timemator was verified as official when first introduced to the cask
  url 'https://s3-eu-west-1.amazonaws.com/catforce-timemator/releases/Timemator.dmg'
  appcast 'https://s3-eu-west-1.amazonaws.com/catforce-timemator/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
