cask :v1 => 'tokaido' do
  version '1.0'
  sha256 '72752b8e4e9f0e554661d8fb58879a82cac6dc5d19762367c89ca191f497d258'

  url "https://github.com/tokaido/tokaidoapp/releases/download/v#{version}/Tokaido.zip"
  appcast 'https://github.com/tokaido/tokaidoapp/releases.atom'
  name 'Tokaido'
  homepage 'https://github.com/tokaido/tokaidoapp'
  license :mit

  app 'Tokaido.app'
end
