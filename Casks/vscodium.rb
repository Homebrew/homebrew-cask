cask 'vscodium' do
  version '1.28.0'
  sha256 '6dd5a70bc5de60b9f05d4126f7fab27a87dad9f07ab896bba58beb5121ac3086'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCode-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'
end
