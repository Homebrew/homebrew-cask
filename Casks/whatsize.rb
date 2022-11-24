cask "whatsize" do
  version "7.7.6,7760"
  sha256 "63f0239238729499962815af6f2ce898649d6065820d08a0f8acdece9cbf6e12"

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
