cask 'thedesk' do
  version '18.6.4'
  sha256 'c08945adaa2b0ac48aab07568f9c15e4c10d5dfd4f390ae085e77d5b70d86609'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
