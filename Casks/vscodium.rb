cask 'vscodium' do
  version '1.27.2'
  sha256 '12eab5a0387aa3042ee1e2f1dd6dd8b5ed68ef7f20f1b08eefee172ab209aa4c'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
