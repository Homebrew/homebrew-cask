cask 'thedesk' do
  version '18.0.3'
  sha256 '240aca571b2ce4cad659eb9e38e7439a01cb5c7970b72e854fe183fd4f2e86a7'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/m#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk-darwin-x64/TheDesk.app'
end
