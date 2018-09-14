cask 'vscodium' do
  version '1.27.2'
  sha256 'fa7f09be214ad8581ac587c7c31827afeff63158df0f145f4c160a0ca6602860'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
