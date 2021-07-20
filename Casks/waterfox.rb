cask "waterfox" do
  version "3.2.4"
  sha256 "2539b96e3bd259d14473e29d74bd60bad3cfcaef0c9c24cfe6ef8058d4076a3f"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20G#{version}%20Setup.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.net/download/"
    regex(%r{href=.*?/Waterfox%20G(\d+(?:\.\d+)+)%20Setup\.dmg}i)
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
