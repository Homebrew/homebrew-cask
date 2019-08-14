cask 'thedesk' do
  version '18.8.0'
  sha256 '43315b531f471e51459b298fc13d58a9dafdc73936102033ffadde8afe4a1a4a'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
