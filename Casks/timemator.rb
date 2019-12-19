cask 'timemator' do
  version '2.0.2'
  sha256 'd31979481b5661963b3eae8d61c83e20ebaee30b2b1f9b635e56ad025e248e10'

  # catforce-timemator.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
