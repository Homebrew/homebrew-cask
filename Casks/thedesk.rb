cask 'thedesk' do
  version '18.2.3'
  sha256 'b9fe3bfb84776378600a246e806cb189e1abb6cc46696fb0dc429ce675130deb'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
