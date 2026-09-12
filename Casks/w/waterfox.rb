cask "waterfox" do
  version "6.7.3"
  sha256 "1d4f69b7eb18fbfedf14c2a23d10db2377e7942f9ac7ffab21384d55d60afe19"

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
