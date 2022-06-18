cask "waterfox" do
  arch = Hardware::CPU.intel? ? "Setup" : "ARM.Setup"

  version "4.1.2.1"

  if Hardware::CPU.intel?
    sha256 "8b67aac3f5dba133bbfe823243563d38b5a19fd2b030521ba2f100e155fadd9c"
  else
    sha256 "8757ae18628b77e6c5d2fa12d33c5e550fee3e35a1006e381806c87467bdfb12"
  end

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
