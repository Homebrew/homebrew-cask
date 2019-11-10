cask 'thedesk' do
  version '20.0.1'
  sha256 '3783737b425ab27cc189365d5842c4b1da1f483a9148f4fdcae746981fee2d60'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
