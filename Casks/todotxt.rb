cask :v1 => 'todotxt' do
  version '1.2.5'
  sha256 'd808ef164004500c2b77db65035e867097ce69611be2621d49acb29e216f8c19'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
