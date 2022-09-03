cask "yacreader" do
  version "9.9.0.2209032"
  sha256 "d2cffb067ae2b4c74dc1bb88addcfbd2d864d3fa80b04ebe9d1eabd961e1598b"

  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.dmg",
      verified: "github.com/YACReader/yacreader/"
  name "YACReader"
  desc "Comic reader"
  homepage "https://www.yacreader.com/"

  livecheck do
    url "https://github.com/YACReader/yacreader/releases"
    strategy :page_match
    regex(%r{href=.*?/YACReader[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]Intel\.dmg}i)
  end

  app "YACReader.app"
  app "YACReaderLibrary.app"

  zap trash: [
    "~/Library/Application Support/YACReader",
    "~/Library/Preferences/com.yacreader.YACReader.plist",
    "~/Library/Preferences/com.yacreader.YACReaderLibrary.plist",
    "~/Library/Saved Application State/com.yacreader.YACReader.savedState",
    "~/Library/Saved Application State/com.yacreader.YACReaderLibrary.savedState",
  ]
end
