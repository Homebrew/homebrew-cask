cask 'thedesk' do
  version '20.0.2'
  sha256 '87cf00538a9fb7d9a67132d139d752f91a146d403313c5e4f679f5d9bad743ca'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
