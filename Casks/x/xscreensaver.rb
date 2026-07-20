# typed: false

cask "xscreensaver" do
  version "6.15"
  sha256 "c04b4829707f23a152c01bbb3fe1652b5bdefc52f97605a228e551bfcd54d9da"

  url "https://www.jwz.org/xscreensaver/xscreensaver-#{version}.dmg"
  name "XScreenSaver"
  desc "Screen savers"
  homepage "https://www.jwz.org/xscreensaver/"

  livecheck do
    url "https://www.jwz.org/xscreensaver/download.html"
    regex(/href=.*?xscreensaver[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  pkg "Install Everything.pkg"

  generated_script "uninstall-xscreensaver.sh", content: <<~'SH'
    #!/bin/bash
    for plist in /Library/Screen\ Savers/*.saver/Contents/Info.plist; do
      [[ -e "$plist" ]] || continue
      bundle_id=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "$plist")
      [[ "$bundle_id" == org.jwz* ]] || continue
      screensaver_name=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleExecutable' "$plist")
      /bin/rm -rf "/Library/Screen Savers/${screensaver_name// /}.saver"
    done
  SH

  uninstall script:  {
              executable: "uninstall-xscreensaver.sh",
              sudo:       true,
            },
            pkgutil: "org.jwz.xscreensaver",
            delete:  [
              "/Applications/Apple2.app",
              "/Applications/Phosphor.app",
              "/Library/Screen Savers/XScreenSaverUpdater.app",
            ]

  zap trash: [
    "~/Library/HTTPStorages/org.jwz.xscreensaver.XScreenSaverUpdater",
    "~/Library/Preferences/org.jwz.xscreensaver.*.plist",
    "~/Library/Saved Application State/org.jwz.xscreensaver.*.savedState",
  ]
end
