cask 'zesarux' do
  version '7.2'
  sha256 '0739f1729a4532a4e2b80d86db83da7025ce06a88fec43696f6e1b97373efcd6'

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}-final/ZEsarUX_macos-#{version}.dmg.gz"
  appcast 'https://github.com/chernandezba/zesarux/releases.atom'
  name 'ZEsarUX'
  homepage 'https://github.com/chernandezba/zesarux'

  app 'ZEsarUX.app'
end
