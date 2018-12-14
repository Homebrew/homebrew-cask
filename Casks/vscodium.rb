cask 'vscodium' do
  version '1.30.0'
  sha256 '1069499ffc00367e316f6de9f5303e7d454e92f6f06e5c5a18cad9d2fe3ccd3e'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
