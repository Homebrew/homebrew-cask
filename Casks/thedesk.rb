cask 'thedesk' do
  version '18.11.0'
  sha256 '048ba05c0401b49ec8eaf37ad29562e556a8bb3ffc9bb8318fa55b2ea37395ef'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
