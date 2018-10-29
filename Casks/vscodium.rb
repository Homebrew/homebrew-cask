cask 'vscodium' do
  version '1.28.2'
  sha256 '4476514525d7198c85be614fe20e2fe83cb46e46b0104c33424485c8c66bc477'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
