cask 'thedesk' do
  version '18.6.1'
  sha256 'df482bb3b233b410bdacce1b6d3d3d07176982c16c7bdcd6229c3627fb1c0634'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
