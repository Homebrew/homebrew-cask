cask 'thedesk' do
  version '21.0.1'
  sha256 'd20701fe9ad7a26dd062f3a6a592e4c68339a8119be908205962b76e6757b2e3'

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
