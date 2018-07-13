cask 'texturepacker' do
  version '4.8.2'
  sha256 'bdbe67662cae2ae2f10ab72ed5198c2996e9520b869f26f1c52b7bd42a46cbf0'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
