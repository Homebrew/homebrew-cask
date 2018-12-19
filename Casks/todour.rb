cask 'todour' do
  version '2.14'
  sha256 '7f86aebc70f8ad8135bfe27be2d78b702e3bcf791f6aa1602c169e6b749c0fee'

  url "https://nerdur.com/Todour-#{version}.dmg"
  appcast 'https://github.com/SverrirValgeirsson/Todour/releases.atom'
  name 'Todour'
  homepage 'https://nerdur.com/todour-pl/'

  app 'Todour.app'
end
