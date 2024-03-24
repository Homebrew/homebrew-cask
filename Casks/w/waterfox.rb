cask "waterfox" do
  version "6.0.11"
  sha256 "0c4d6ad9d0daf0eb5c5bb93d8fc4e6aaefa9de9d576e6a13bbcf43c265483c2f"

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
