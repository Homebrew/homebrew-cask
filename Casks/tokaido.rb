cask :v1 => 'tokaido' do
  version '1.0'
  sha256 '72752b8e4e9f0e554661d8fb58879a82cac6dc5d19762367c89ca191f497d258'

  url "https://github.com/tokaido/tokaidoapp/releases/download/v#{version}/Tokaido.zip"
  homepage 'https://github.com/tokaido/tokaidoapp/releases'
  license :oss

  app 'Tokaido.app'
end
