cask 'thedesk' do
  version '18.6.5'
  sha256 '2251fca51d060a4bf3cd0d9861125e7caca1f0fc63f57826241e472eac5a3faf'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
