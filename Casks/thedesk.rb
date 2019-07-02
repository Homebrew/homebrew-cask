cask 'thedesk' do
  version '18.6.6'
  sha256 '9bc157bdb2b3d54313006859fbbc61ef9afbbde13bf6ab9319ed2dcae9d977e5'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
