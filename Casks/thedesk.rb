cask 'thedesk' do
  version '18.11.2'
  sha256 'dbff74ea12958a28f0ad4f1fdf2dddea73d4e903d16462ac20ea8c39df4ee3f6'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
