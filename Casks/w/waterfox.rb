cask "waterfox" do
  version "6.0.16"
  sha256 "95c7a9e2e66ff93da3b3a1a486b01df087062a49b0db9b699b68213b7de71aae"

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
