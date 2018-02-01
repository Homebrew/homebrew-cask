cask 'texturepacker' do
  version '4.6.1'
  sha256 '53aaa9df6f59bc99dc7a881b38fb3de442e21d6f0589af5bc754403e3c5a263e'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: 'c372ef035755414aec212fbe1be68483ce871c801705497767345565d6a0bbac'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
