cask 'texturepacker' do
  version '5.3.0'
  sha256 '6fb9508719138c8bfd6469bc7a13c4a7f157f30f9608a1a3f4d7c3583c67a0c1'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
