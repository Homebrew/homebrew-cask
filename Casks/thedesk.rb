cask 'thedesk' do
  version '18.7.1'
  sha256 '0e92ed2ab9b61fe9b113ae3c90af9e90281f83f1c76af2aca53a8ccda3016252'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
