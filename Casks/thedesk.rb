cask 'thedesk' do
  version '20.1.0'
  sha256 '0ee817804d29da046d2a07a7ba2de686775c579685257c6b68d9dff7a394e560'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
