cask "texturepacker" do
  version "5.5.0"
  sha256 "b7ee407741a554d1ad52df275674fcd1cf2c787ae2cbf8cae35de1cf465e60f1"

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  name "TexturePacker"
  homepage "https://www.codeandweb.com/texturepacker"

  livecheck do
    url "https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml"
    strategy :sparkle
  end

  app "TexturePacker.app"
end
