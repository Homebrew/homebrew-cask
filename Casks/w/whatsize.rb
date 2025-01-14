cask "whatsize" do
  version "8.1.7"
  sha256 "ace81a93a4e752710c2f218686c8aec9ebef846947174c2259e516587ed86ba7"

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
