cask 'texturepacker' do
  version '4.12.0'
  sha256 '21eb5e9a61cabaddca2ad567731e07e6a39fe1a4038b7a8b98868f6613da3af3'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
