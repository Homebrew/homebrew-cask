cask 'thedesk' do
  version '18.5.0'
  sha256 'b473de6a6561a5018c23b30779744f95e00bb002ec327a07899f2b1f919d5967'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
