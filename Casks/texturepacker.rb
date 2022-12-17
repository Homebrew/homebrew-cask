cask "texturepacker" do
  version "7.0.0"
  sha256 "127ba8debc0ec565ae4ccd04263f2e8c60e418166bf0d150575d233ce02be24f"

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
