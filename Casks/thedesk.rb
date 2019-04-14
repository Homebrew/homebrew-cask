cask 'thedesk' do
  version '18.2.3'
  sha256 'ed97a9e0696939ea8bcfb7493eff8d849cbdaca9caf61334a17e01fa1db99007'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
