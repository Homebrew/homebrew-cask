cask "xscreensaver" do
  version "6.17"
  sha256 "b9128d745f7d1452541e015cc6da056d246ca9f0dcd0a3deb277c2163edf3e3a"

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

  uninstall_postflight_steps do
    remove "uninstall-xscreensaver.sh"
  end

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
