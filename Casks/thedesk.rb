cask 'thedesk' do
  version '20.0.6'
  sha256 'd1b08da0c7c811fd31ae7f989944776a6f7bf36cb06f26101d780f665ae7bbdc'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
