cask 'thedesk' do
  version '20.3.0'
  sha256 '356c48f7919f077d39b6c23a44c9a271e2ce6d2203bd9e282b9affe03f5dabb9'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
