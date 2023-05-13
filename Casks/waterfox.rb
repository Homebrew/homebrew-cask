cask "waterfox" do
  version "5.1.6"
  sha256 "07d3dae7146366e89828a88b2a2810e185ed25c728e69acc5310e5f0a52ba622"

  url "https://cdn1.waterfox.net/waterfox/releases/G#{version}/Darwin_x86_64-aarch64/Waterfox%20G#{version}.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://cdn1.waterfox.net/waterfox/releases/latest/macos"
    strategy :header_match
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
