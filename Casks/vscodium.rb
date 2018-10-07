cask 'vscodium' do
  version '1.27.2'
  sha256 '53dee2011c3447756ceb4abe7c8b24b0d75bd55575ff4c1f56d853ff92004e7a'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
