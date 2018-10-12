cask 'vscodium' do
  version '1.28.0'
  sha256 'f85662101412f8aff9291a26507caa830bddf52db85ea928090225bcb6a2f090'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
