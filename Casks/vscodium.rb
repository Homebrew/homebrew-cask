cask 'vscodium' do
  version '1.28.1'
  sha256 '45f994c728499b99cb442f993d8abb5d861042e4879b66695845dd363d125cf0'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
