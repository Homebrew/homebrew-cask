cask 'thedesk' do
  version '18.11.1'
  sha256 '789c52ea75efdc521a5b8ccfe0617fab9dcdd9b01f9868c3ffa261c423c83f40'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
