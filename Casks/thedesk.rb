cask 'thedesk' do
  version '18.4.0'
  sha256 '2248c451c0666e39e9c150e76f49f388243c36201e2d66ab2ec578a63be9e3b5'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
