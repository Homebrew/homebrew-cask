cask :v1 => 'todotxt' do
  version '1.2.8'
  sha256 '9d74c1ff59775271010a242fc4065e02dc24d1be47cfa349c5ed991c4cf5045e'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
