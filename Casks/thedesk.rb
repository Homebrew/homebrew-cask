cask 'thedesk' do
  version '18.11.4'
  sha256 'ba0b853c811471905d9f259e91e5fc8152b86c1ce58418ee402c18cd3ac57fac'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
