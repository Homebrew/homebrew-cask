cask :v1 => 'todotxt' do
  version '1.4.0'
  sha256 '8caa4f7447fc93c067eece1764a292f0c635fe992f6eaf0417bab2a783b8ec8c'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
