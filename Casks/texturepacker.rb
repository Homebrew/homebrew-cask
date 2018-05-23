cask 'texturepacker' do
  version '4.7.0'
  sha256 '6419bcb39f30ca8adaf5a2c1ad85115757cc59b0d4aa9dbd01f1c76bc9e3ca83'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '348b7f57660df56370e341b802c0a11e0f2f9837bdf69400d5fee9298defa65b'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
