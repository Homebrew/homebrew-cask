cask 'thedesk' do
  version '18.9.1'
  sha256 '3bc9119abc33e5093d4393a9221344a40f66c977c7fb7867d695a29fe2b4ef90'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
