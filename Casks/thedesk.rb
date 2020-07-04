cask 'thedesk' do
  version '21.0.4'
  sha256 '195f52b8c3443d928700171315d4b25c8b32965d75a5c2235f2155023cda3378'

  # github.com/cutls/TheDesk/ was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
