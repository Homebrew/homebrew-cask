cask 'texturepacker' do
  version '4.8.3'
  sha256 'e637ce7592c86cf783b26beff3724f4357e77315c321573d7ceb342926ec3488'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
