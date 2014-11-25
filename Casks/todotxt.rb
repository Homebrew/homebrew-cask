cask :v1 => 'todotxt' do
  version '1.2.4'
  sha256 '368010bec057387bdc6ee9cef4646f90d8eb1af8e1b4ec1666045e7e2166db4a'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
