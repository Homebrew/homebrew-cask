cask :v1 => 'tokaido' do
  version '2.2'
  sha256 '150f76ada617ad7588803cd987da8f790695eaa2779e55ca4b3405698ab4388c'

  url "https://github.com/tokaido/tokaidoapp/releases/download/v#{version}/Tokaido.zip"
  appcast 'https://github.com/tokaido/tokaidoapp/releases.atom'
  name 'Tokaido'
  homepage 'https://github.com/tokaido/tokaidoapp'
  license :mit

  app 'Tokaido.app'
end
