cask "whatsize" do
  version "8.2.1"
  sha256 "d25cecb982dbbf3f461770594bc3c3aab6df1b0dc6f9964468485ceb45b174ab"

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.pkg"
  name "WhatSize"
  desc "File system utility used to view and reclaim disk space"
  homepage "https://www.whatsizemac.com/"

  livecheck do
    url "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  pkg "whatsize_#{version}.pkg"

  uninstall launchctl: "com.id-design.v#{version.major}.whatsizehelper",
            pkgutil:   "com.id-design.v#{version.major}.whatsize.pkg"

  zap trash: [
    "~/Library/Application Support/WhatSize",
    "~/Library/Caches/com.id-design.v#{version.major}.whatsize",
    "~/Library/HTTPStorages/com.id-design.v#{version.major}.whatsize",
    "~/Library/Logs/WhatSize.log",
    "~/Library/Preferences/com.id-design.v#{version.major}.whatsize.plist",
    "~/Library/Saved Application State/com.id-design.v#{version.major}.whatsize.savedState",
  ]
end
