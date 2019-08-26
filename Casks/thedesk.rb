cask 'thedesk' do
  version '18.8.3'
  sha256 '4bb3e29a5266b3c9b30601978bbb30c9a02b3914f359dca906a3e46cfd84e057'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
