cask 'thedesk' do
  version '20.3.1'
  sha256 '683d647acf94dbd3220c0e0f0c9934e39673a8875747b9fac002c372c4519fb9'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
