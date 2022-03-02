cask "whatsize" do
  version "7.7.4"
  sha256 "9c473bff7fcb5aaa237d10e05d04dff5dea6e5383b36f11562b134e2a8571a59"

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
