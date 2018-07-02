cask 'todour' do
  version '2.13'
  sha256 '04d13f3a11f18d9d7ccb92affff4c44f11b54b5ad079ac44e4e5981508d708de'

  url "http://nerdur.com/Todour-#{version}.dmg"
  appcast 'https://github.com/SverrirValgeirsson/Todour/releases.atom'
  name 'Todour'
  homepage 'http://nerdur.com/todour-pl/'

  app 'Todour.app'
end
