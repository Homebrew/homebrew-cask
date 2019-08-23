cask 'thedesk' do
  version '18.8.2'
  sha256 'c779f9144b0ce29a474f5bab55effc91ab50457093773695d6dc2683d57deea2'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
