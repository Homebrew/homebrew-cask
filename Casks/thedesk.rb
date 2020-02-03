cask 'thedesk' do
  version '20.1.1'
  sha256 '0bf8c54b4fe20d8429e07bc1a2a9d8fc8c5fff38db34e505635a6cf1eb3122ca'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
