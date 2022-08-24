cask "waterfox" do
  arch arm: "ARM.Setup", intel: "Setup"

  version "4.1.5"
  sha256 arm:   "7aa1cbf8f626f4e52dc8ee0715b30825e09706e8fef2ad1030e17098014a1f6e",
         intel: "5c1d58681c7ce6622ec4ff302bf1d2e0ed57d5f5fb589c3553b56e4c85ef7897"

  url "https://github.com/WaterfoxCo/Waterfox/releases/download/G#{version}/Waterfox.G#{version}.#{arch}.dmg", verified: "github.com/WaterfoxCo/Waterfox/"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url :url
    regex(/^G?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
