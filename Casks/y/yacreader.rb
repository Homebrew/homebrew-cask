cask "yacreader" do
  version "9.14.1.2402053"
  sha256 "d11b1539102b168909c7d5996ebc5d34aa27e9c7284dfc129b88e542235b4c93"

  url "https://github.com/YACReader/yacreader/releases/download/#{version.major_minor_patch}/YACReader-#{version}.MacOSX-U.Qt6.dmg",
      verified: "github.com/YACReader/yacreader/"
  name "YACReader"
  desc "Comic reader"
  homepage "https://www.yacreader.com/"

  livecheck do
    url "https://www.yacreader.com/downloads"
    regex(%r{href=.*?/YACReader[._-]v?(\d+(?:\.\d+)+)[._-]MacOSX[._-]U[._-]Qt6\.dmg}i)
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
