cask 'thedesk' do
  version '20.1.2'
  sha256 '377d1343c465e6398cf21a169d6716d9a37eac258ce03008677dd05a157ec6d2'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
