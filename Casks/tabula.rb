cask :v1 => 'tabula' do
  version '1.0.0'
  sha256 '1eeb7639f301ce0aafef4a8da6544744987712f558723a0a01e1c541aae182f1'

  url "https://github.com/jazzido/tabula/releases/download/v#{version}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/jazzido/tabula/releases.atom'
  name 'Tabula'
  homepage 'http://tabula.technology/'
  license :mit

  app 'tabula/Tabula.app'
end
