cask 'zesarux' do
  version '8.0'
  sha256 '8b52f1c990d9abe3c702d2771d6ff761c9295687019b78d567b0f5b793a6650b'

  url "https://github.com/chernandezba/zesarux/releases/download/#{version}/ZEsarUX_macos-#{version}.dmg.gz"
  appcast 'https://github.com/chernandezba/zesarux/releases.atom'
  name 'ZEsarUX'
  homepage 'https://github.com/chernandezba/zesarux'

  app 'ZEsarUX.app'
end
