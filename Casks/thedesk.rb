cask 'thedesk' do
  version '20.3.3'
  sha256 '477cac5e1fc77222246ae06615bbdd62d92e1c637fa87f9b5b91bb60df72fe06'

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
