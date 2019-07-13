cask 'thedesk' do
  version '18.7.0'
  sha256 '12d2a42c0f35b150044df90dc22753f95d42eab6fef916acedbd11b92a37a3c8'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
