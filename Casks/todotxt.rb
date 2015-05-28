cask :v1 => 'todotxt' do
  version '1.5.1'
  sha256 'c848d808d2ea7147cd6f822f518cfcf622041a1d907406be56bb9caf58e5ca4c'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
