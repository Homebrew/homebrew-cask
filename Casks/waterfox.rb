cask "waterfox" do
  version "3.2.4.1"
  sha256 "d5cf7a2652acbe4b2ef9724f8da9406e2c9ba986136dabbaa12754484ac11bae"

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
