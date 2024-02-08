cask "xscreensaver" do
  version "6.08.1"
  sha256 "3450ee464c70269a9f6be2d38aa66859dad519fdac4c552a2a7b3a106788cfd3"

  url "https://www.jwz.org/xscreensaver/xscreensaver-#{version}.dmg"
  name "XScreenSaver"
  desc "Screen savers"
  homepage "https://www.jwz.org/xscreensaver/"

  livecheck do
    url "https://www.jwz.org/xscreensaver/download.html"
    regex(/href=.*?xscreensaver[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "Install Everything.pkg"

  # There is no uninstall script for this Cask, so a manual uninstall is performed
  # Loop through all screensaver plist files, looking for "org,jwz" in the bundle identifier
  # Then remove the screensaver if the bundle identifier matches
  uninstall_postflight do
    Pathname.glob("/Library/Screen Savers/*.saver/Contents/Info.plist").each do |plist|
      bundle_id = `/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' "#{plist}"`
      next unless bundle_id.start_with?("org.jwz")

      screensaver_name = `/usr/libexec/PlistBuddy -c 'Print :CFBundleExecutable' "#{plist}"`.delete(" ").strip
      screensaver = Pathname.new("/Library/Screen Savers/#{screensaver_name}.saver")
      Utils.gain_permissions_remove(screensaver) if screensaver.directory?
    end
  end

  uninstall pkgutil: "org.jwz.xscreensaver",
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
