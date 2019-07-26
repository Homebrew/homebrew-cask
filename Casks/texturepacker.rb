cask 'texturepacker' do
  version '5.1.0'
  sha256 '4b849ced31b4c209ef409746ed7ef628ce1ca6a6ecf09821a2c67b448dfbe022'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
