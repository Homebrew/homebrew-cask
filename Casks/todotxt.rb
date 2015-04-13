cask :v1 => 'todotxt' do
  version '1.5.0'
  sha256 'a1ca515ba0f521e7a4eab8da5db684323fe655621d7dc68f77b837a94c47528a'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
