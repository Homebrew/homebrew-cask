cask 'timemator' do
  version '2.5.2'
  sha256 'f4e6ee06818a24dc6bc1de943518c0aade50a2175729fe985f1b6774607749a9'

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
