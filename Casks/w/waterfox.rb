cask "waterfox" do
  version "6.5.2"
  sha256 "40a369332348614a6bae006ae8b9fcd49c2be3bef0bc5231b2559e9798da5e57"

  url "https://cdn1.waterfox.net/waterfox/releases/#{version}/Darwin_x86_64-aarch64/Waterfox%20#{version}.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://cdn1.waterfox.net/waterfox/releases/latest/macos"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
