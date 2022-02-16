cask "whatsize" do
  version "7.7.3,7730"
  sha256 "9fc88735f680a6817758a04b72fe755457d29cf49858eebf55304284703d139d"

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version.csv.first}.tgz"
  name "WhatSize"
  desc "File system utility used to view and reclaim disk space"
  homepage "https://www.whatsizemac.com/"

  livecheck do
    url "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  pkg "WhatSize.pkg"

  uninstall pkgutil:   "com.id-design.v#{version.major}.whatsize.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
