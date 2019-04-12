cask 'thedesk' do
  version '18.2.1'
  sha256 '53b2175449700988e4b0a9e215672648f2a508b73a991b8401f62fda8c5fb5c8'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
