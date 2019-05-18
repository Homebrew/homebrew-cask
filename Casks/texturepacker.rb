cask 'texturepacker' do
  version '5.0.0'
  sha256 '27399322354ac62fbdc59418c269b5c8779edceeb588c32d19a58e4b498ce8c5'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
