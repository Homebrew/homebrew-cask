cask 'thedesk' do
  version '20.0.4'
  sha256 'e67a5e156422581ae1c7d70f612f97629f6895d1f822c22603a3ac61e5e49620'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
