cask 'vscodium' do
  version '1.27.1'
  sha256 'fd8a5e6bd5914b256f59449f857f6aaac79663064cdf20353905ff7d3a2e44ab'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
