cask 'thedesk' do
  version '20.0.5'
  sha256 '97da4e869b69ed3f4e348b055a884e83aa7ff6cca54c63d64c2b292cfa8f7b47'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
