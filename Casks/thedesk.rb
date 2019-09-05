cask 'thedesk' do
  version '18.9.2'
  sha256 '709ec33c36fb3388c811dbb07835e67419eb0bfb241f50b25f2cd307fa3871c1'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
