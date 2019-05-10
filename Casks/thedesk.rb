cask 'thedesk' do
  version '18.3.3'
  sha256 '61b4044437a3539fd6fdd19316f4bff27c9a59a625f8a09ed5f50cd9d829a9ca'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
