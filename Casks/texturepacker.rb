cask "texturepacker" do
  version "6.0.0"
  sha256 "82ce63f362a23bc8fd698c3cd706a14385a5e0bd4eeb5d4c304d2aa13b8cd9fe"

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
