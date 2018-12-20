cask 'vscodium' do
  version '1.30.1'
  sha256 'f906549d94d153516d46423e08579ea3df0899130a2bde9d1c62fbd0b327eef0'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
