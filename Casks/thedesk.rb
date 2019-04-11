cask 'thedesk' do
  version '18.2.0'
  sha256 '0825725c99ef67b46fc586ac67b784b338051881c1a9964742a7d801eccfb474'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/m#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk-darwin-x64/TheDesk.app'
end
