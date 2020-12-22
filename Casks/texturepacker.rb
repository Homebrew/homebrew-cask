cask "texturepacker" do
  version "5.4.0"
  sha256 "7055bed6c6ee278143431755d1dd9026611e4d9aba396b74de10cb09c270e108"

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  name "TexturePacker"
  homepage "https://www.codeandweb.com/texturepacker"

  livecheck do
    url "https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml"
    strategy :sparkle
  end

  app "TexturePacker.app"
end
