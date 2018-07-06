cask 'texturepacker' do
  version '4.8.1'
  sha256 'b27885af637ce4aa906fb41bf67f7e271c51153cdf3be2a662adae14881ebf00'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
