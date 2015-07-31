cask :v1 => 'tabula' do
  version '0.9.7'
  sha256 '8fe8c4879cc56f1c07e8068122eb06417c3d43d5e3cc1c77b39a604df8c100f9'

  url "https://github.com/jazzido/tabula/releases/download/v#{version}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/jazzido/tabula/releases.atom'
  name 'Tabula'
  homepage 'http://tabula.technology/'
  license :mit

  app 'tabula/Tabula.app'
end
