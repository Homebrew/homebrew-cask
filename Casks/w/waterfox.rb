cask "waterfox" do
  version "5.1.11"
  sha256 "ed33d1645b1c76f5126dc3f2d5d32e81ab0941781b42761522ea7447007d8824"

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
