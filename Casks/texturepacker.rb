cask 'texturepacker' do
  version '5.2.0'
  sha256 'bf90c2db57b206d16ed590daa56641df8033bef4e97f111f62a70fd518d82fc1'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
