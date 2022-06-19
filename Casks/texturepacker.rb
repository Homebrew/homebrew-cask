cask "texturepacker" do
  version "6.0.2"
  sha256 "cc80d7d2760cb73acc6e335c45cff52f1f88f6f707fd903d152eea059603ae16"

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
