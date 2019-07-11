cask 'thedesk' do
  version '18.6.7'
  sha256 '1feed8cf06330f2e41a7ae25466db93d72816058c43d17bdeafffd9fe96abdcb'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
