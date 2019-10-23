cask 'thedesk' do
  version '18.11.3'
  sha256 '21dcf120ea7bd23d406a281e4ca4b45e010229f3f0730558b20151246f8cdc7e'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
