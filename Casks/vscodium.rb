cask 'vscodium' do
  version '1.27.1'
  sha256 'f339bb6b3d90f71144b510aa27d741fe300e625305e765d5ed6d2ed5f97ba0a1'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodiumas/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'Code - OSS.app'
end
