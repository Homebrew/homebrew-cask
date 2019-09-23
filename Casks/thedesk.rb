cask 'thedesk' do
  version '18.10.1'
  sha256 'a648cf19736f29ea0d56882b1c32bbc594fa6e0641ca443088e2bdf1f7e5f652'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
