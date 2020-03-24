cask 'zesarux' do
  version '8.1'
  sha256 '169e140cefce17d3d62bb1983e801f07e18d8ddae771680eb275399c6b66ce67'

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}/ZEsarUX_macos-#{version}.dmg.gz"
  appcast 'https://github.com/chernandezba/zesarux/releases.atom'
  name 'ZEsarUX'
  homepage 'https://github.com/chernandezba/zesarux'

  app 'ZEsarUX.app'
end
