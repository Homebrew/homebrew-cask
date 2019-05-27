cask 'thedesk' do
  version '18.5.0'
  sha256 '6433be5ffab864d6d157e9d95f7b979f91dd82dd765d9178824a21638217765b'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
