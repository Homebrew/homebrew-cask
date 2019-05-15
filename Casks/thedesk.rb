cask 'thedesk' do
  version '18.4.0'
  sha256 '3edf78fd5af68b06d5c1d1be2981b71e135007bd373d35c9198f530750c15ea1'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
