cask 'thedesk' do
  version '20.2.0'
  sha256 '9ecf513c417ffbeb4eafba60594d48fb9de9688d00f37fbc3be06e05bdc3407a'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
