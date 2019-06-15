cask 'thedesk' do
  version '18.6.0'
  sha256 'd620d330df41d462a2f9b15b4a4a54a1ee3a2ddc896d2cc0644eea7577af52b5'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
