cask "waterfox" do
  version "3.2.6"
  sha256 "1aa0442868c503a2b214c023364d6b86e7a3cb6eda94c80d73e19d627996ee3d"

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
