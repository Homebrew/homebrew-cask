cask 'thedesk' do
  version '20.0.3'
  sha256 '4ebb86c3e98e5b1362969a7d0466b08dea5d7a610b4c29016553dbf9dcd3c787'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
