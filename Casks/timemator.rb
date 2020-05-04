cask 'timemator' do
  version '2.5'
  sha256 '49be07ee56a346a60a7ba9ece4e7220c294309d64a3d75bec7ee5ecd976a5846'

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
