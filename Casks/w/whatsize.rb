cask "whatsize" do
  version "8.2.5"
  sha256 "1e72029d6578c4c0db51ee93d859e4865a67dbab2dd8d194e32996fc8ae777b2"

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.pkg"
  name "WhatSize"
  desc "File system utility used to view and reclaim disk space"
  homepage "https://www.whatsizemac.com/"

  livecheck do
    url "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  pkg "whatsize_#{version}.pkg"

  uninstall launchctl: "com.id-design.v#{version.major}.whatsizehelper",
            pkgutil:   "com.id-design.v#{version.major}.whatsize.pkg"

  zap trash: [
    "~/Library/Application Support/WhatSize",
    "~/Library/Caches/com.id-design.v#{version.major}.whatsize",
    "~/Library/HTTPStorages/com.id-design.v#{version.major}.whatsize",
    "~/Library/Logs/WhatSize",
    "~/Library/Preferences/com.id-design.v#{version.major}.whatsize.plist",
    "~/Library/Saved Application State/com.id-design.v#{version.major}.whatsize.savedState",
    "~/Library/WebKit/com.id-design.v#{version.major}.whatsize",
  ]
end
