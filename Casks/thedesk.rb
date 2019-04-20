cask 'thedesk' do
  version '18.3.0'
  sha256 'fe821c86e4a6e7b068a594d7d71f9ce25bfc1ed3c5b6dda470d55aa23c1f9253'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
