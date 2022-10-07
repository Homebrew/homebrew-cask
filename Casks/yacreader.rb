cask "yacreader" do
  version "9.9.2.2210021"
  sha256 "5cde79c68a0a28504c70361a0f5ade587b8010e8f65a14fa5fd3d5d5230438b5"

  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-Intel.Qt6.dmg",
      verified: "github.com/YACReader/yacreader/"
  name "YACReader"
  desc "Comic reader"
  homepage "https://www.yacreader.com/"

  livecheck do
    url "https://www.yacreader.com/downloads"
    strategy :page_match
    regex(%r{href=.*?/YACReader[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]Intel\.Qt6\.dmg}i)
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
