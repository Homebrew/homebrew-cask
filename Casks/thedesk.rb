cask 'thedesk' do
  version '18.5.1'
  sha256 'd9f5450ba7360bc479c508a54a283fab02342bf3ee3048acd5184b1ce1451244'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
