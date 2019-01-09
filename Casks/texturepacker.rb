cask 'texturepacker' do
  version '4.9.0'
  sha256 'd76483a47cdbef26f276efc1c3c765ad395b4ad63416be1fb63798c237ce85e3'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
