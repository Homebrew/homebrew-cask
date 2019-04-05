cask 'thedesk' do
  version '18.1.1'
  sha256 '0d4ffd3d086194480e9e6038a969eee651d873bdc7dd5b541da6ba0610618fb3'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/m#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk-darwin-x64/TheDesk.app'
end
