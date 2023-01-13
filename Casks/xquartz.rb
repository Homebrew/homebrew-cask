cask "xquartz" do
  version "2.8.4"
  sha256 "1dc13f7cef19469751dc7a15465400f0b179cf35e9b2f486587b5d500c444b68"

  url "https://github.com/XQuartz/XQuartz/releases/download/XQuartz-#{version}/XQuartz-#{version}.pkg",
      verified: "github.com/XQuartz/XQuartz/"
  name "XQuartz"
  desc "Open-source version of the X.Org X Window System"
  homepage "https://www.xquartz.org/"

  livecheck do
    url "https://www.xquartz.org/releases/sparkle-r1/release.xml"
    strategy :sparkle do |item|
      item.short_version.delete_prefix("XQuartz-")
    end
  end

  auto_updates true

  pkg "XQuartz-#{version}.pkg"

  uninstall launchctl: "org.xquartz.privileged_startx",
            pkgutil:   "org.xquartz.X11"

  zap trash: [
        "~/.Xauthority",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.xquartz.x11.sfl*",
        "~/Library/Application Support/XQuartz",
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
