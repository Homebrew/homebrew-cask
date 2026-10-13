cask "waterfox" do
  version "6.7.6"
  sha256 "c0579a6526eb7fd1af9716e9e81798a4a6f4c1e8df13b2d92b72d98d954359df"

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
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
