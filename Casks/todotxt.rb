cask :v1 => 'todotxt' do
  version '2.1.1'
  sha256 '84a45343e9611a1a2e62c6ad4eaa45b9373e2a74490086af548da64ee5e86940'

  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
