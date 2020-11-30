cask "whatsize" do
  version "7.6.3"
  sha256 "7adb843b48f7f057cffdbba853755d384e83752839cba859fd9b90064a4e74a7"

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.tgz"
  appcast "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
  name "WhatSize"
  desc "File system utility used to view and reclaim disk space"
  homepage "https://www.whatsizemac.com/"

  depends_on macos: ">= :sierra"

  pkg "WhatSize.pkg"

  uninstall pkgutil:   "com.id-design.whatsize#{version.major}.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
