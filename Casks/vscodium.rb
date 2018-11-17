cask 'vscodium' do
  version '1.29.1'
  sha256 '59a14afc417d23532c3b75f62bacf051c8ae437ec97a5a2d1599e58a7bb60e01'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
