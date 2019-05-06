cask 'thedesk' do
  version '18.3.2'
  sha256 'c57f0e0e2151726262683d0a581680f10f3e9c31eca41a4912b9cfd99c158c0c'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
