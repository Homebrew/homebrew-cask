cask "whatsize" do
  version "7.7.5,7750"
  sha256 "4d0ddc7e9380959985dd5f5e47c085a164b0a1e908cf769389b6245d5c2fcf73"

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
