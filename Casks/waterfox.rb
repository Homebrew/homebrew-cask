cask "waterfox" do
  arch = Hardware::CPU.intel? ? "Setup" : "ARM.Setup"

  version "4.0.8"

  if Hardware::CPU.intel?
    sha256 "fe49d8da775d0d1ae7914cd51cf59fa9032cf02d398ac8891f2b722f4c2799b0"
  else
    sha256 "ee65166b3da3ff442e2ba0a9953844e5d4db386e0780ce41f3a39b842a191ce2"
  end

  url "https://github.com/WaterfoxCo/Waterfox/releases/download/G#{version}/Waterfox.G#{version}.#{arch}.dmg", verified: "github.com/WaterfoxCo/Waterfox/"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url :url
    regex(/^G?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :yosemite"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
