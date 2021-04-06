cask "xquartz" do
  version "2.8.0"
  sha256 "b74d1d2ff98452d73fb68172c586489e2a6ad3c512e41fd1b0b666ec3dbf5b28"

  url "https://github.com/XQuartz/XQuartz/releases/download/XQuartz-#{version}/XQuartz-#{version}.dmg",
      verified: "github.com/XQuartz/XQuartz/"
  name "XQuartz"
  desc "Open-source version of the X.Org X Window System"
  homepage "https://www.xquartz.org/"

  livecheck do
    url "https://www.xquartz.org/releases/sparkle/release.xml"
    strategy :sparkle do |item|
      item.short_version.delete_prefix("XQuartz-")
    end
  end

  auto_updates true

  pkg "Xquartz.pkg"

  uninstall launchctl: "org.xquartz.privileged_startx",
            pkgutil:   "org.xquartz.X11"

  zap trash: [
    "~/.Xauthority",
    "~/Library/Application Support/XQuartz",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.xquartz.x11.sfl*",
    "~/Library/Caches/org.xquartz.X11",
    "~/Library/Cookies/org.xquartz.X11.binarycookies",
    "~/Library/Logs/X11/org.xquartz.log",
    "~/Library/Logs/X11/org.xquartz.log.old",
    "~/Library/Preferences/org.xquartz.X11.plist",
    "~/Library/Saved Application State/org.xquartz.X11.savedState",
  ],
      rmdir: [
        "~/.fonts",
        "~/Library/Logs/X11",
      ]
end
