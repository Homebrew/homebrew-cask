cask 'thedesk' do
  version '21.0.3'
  sha256 '52bee2e21aed6c9e9d4d22720e8dfb50009936d0b56af85f20460854481d4ba8'

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
