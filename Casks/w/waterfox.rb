cask "waterfox" do
  version "6.7.7"
  sha256 "40a14fc08481f8fb738ac9f6a9cf00dfe8d15e49ad786a182c7022f43e482b8f"

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
