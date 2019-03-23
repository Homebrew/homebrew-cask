cask 'thedesk' do
  version '18.1.0'
  sha256 '24045e6d920f547e90820a28336f7d1764dd1a23c52e8dfc38c263c4b15e99aa'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/m#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk-darwin-x64/TheDesk.app'
end
