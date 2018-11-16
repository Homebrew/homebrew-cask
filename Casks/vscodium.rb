cask 'vscodium' do
  version '1.29.0'
  sha256 'da4e050b96cf4d8696a1068d2878d729f5edfddda19b9d04c1bb763c83fa3f88'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
