cask "waterfox" do
  version "6.7.8"
  sha256 "c0310a0614832808f7919832cdc86f17d646878cf570c5deac007545db0b3089"

  url "https://cdn1.waterfox.net/waterfox/releases/#{version}/Darwin_x86_64-aarch64/Waterfox%20#{version}.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.com/download/"
    regex(/href=.*?Waterfox(?:%20|[._-])v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "Waterfox.app"
  command_wrapper "waterfox",
                  executable: "#{appdir}/Waterfox.app/Contents/MacOS/waterfox"

  uninstall quit: "net.waterfox.waterfox"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/net.waterfox.waterfox.plist",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
