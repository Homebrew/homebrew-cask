cask "whatsize" do
  version "7.6.4,7640"
  sha256 "06c317d247ac0b01cbab146c6d6a7f70506223fbb39a32a7ebc55cfe63e8a92e"

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version.before_comma}.tgz"
  name "WhatSize"
  desc "File system utility used to view and reclaim disk space"
  homepage "https://www.whatsizemac.com/"

  livecheck do
    url "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  pkg "WhatSize.pkg"

  uninstall pkgutil:   "com.id-design.whatsize#{version.major}.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
