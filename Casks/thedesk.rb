cask 'thedesk' do
  version '18.10.0'
  sha256 'becaa2f493a99d88587b17fc4733800bf4c491aba61a2985d62366d7d9605437'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/v#{version}/TheDesk-#{version}.dmg"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk.app'
end
