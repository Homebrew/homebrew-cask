cask "waterfox" do
  arch = Hardware::CPU.intel? ? "Setup" : "ARM.Setup"

  version "4.1.1.1"

  if Hardware::CPU.intel?
    sha256 "ac9aa4804c9decb3b04562b8e6e3e6c305ff3687f21e840eb8280e9cbe678597"
  else
    sha256 "ea251e369900d7fd107f7c3f7959bbc8c4f0db4c491019c9fb6efebf85a43936"
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
