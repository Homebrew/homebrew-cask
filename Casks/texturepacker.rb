cask "texturepacker" do
  version "7.0.2"
  sha256 "be2189c65d0e02e365a0ea3d6523f3ec9270fece45d923f0c29d4f4918a2c932"

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}.dmg"
  name "TexturePacker"
  desc "Game sprite sheet packer"
  homepage "https://www.codeandweb.com/texturepacker"

  livecheck do
    url "https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml"
    strategy :sparkle
  end

  app "TexturePacker.app"
end
