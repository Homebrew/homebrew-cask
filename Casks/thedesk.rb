cask 'thedesk' do
  version '18.3.1'
  sha256 'e5f72aefed755b61ef3cd2965728e8d70f890090f3d01545369dc407fc9a7f49'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
