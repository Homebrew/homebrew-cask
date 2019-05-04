cask 'thedesk' do
  version '18.3.1'
  sha256 '41bc1fe076ade679ba5575734b4d407b49dff64ffe69b3c5a2c7fb7a90f0cf3d'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
