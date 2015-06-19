cask :v1 => 'todotxt' do
  version '1.6.0'
  sha256 '3671d6ff47ad2bd76e3a67d98f0789f2aa1c5286660920b584a682232b1b92da'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
