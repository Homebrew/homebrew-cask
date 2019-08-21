cask 'thedesk' do
  version '18.8.1'
  sha256 'c682b582fddfd7e61637ffdd33fc803df9dfd81d2dd5694d88791aebbdc62da1'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
