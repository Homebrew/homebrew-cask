cask 'timemator' do
  version '2.5.1'
  sha256 '8b8f2b3ed391f6976ef6f397b4faa3d1982319679befd56b5d2b9915416fedcb'

  # catforce-timemator.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://catforce-timemator.s3.amazonaws.com/releases/Timemator.dmg'
  appcast 'https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml'
  name 'Timemator'
  homepage 'https://timemator.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Timemator.app'
end
