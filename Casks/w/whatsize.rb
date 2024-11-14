cask "whatsize" do
  version "8.1.4"
  sha256 "19fa4a3bee1b4261716d16e342a94e4eb08959b1f0b95c659535dc66be7e2cb4"

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
