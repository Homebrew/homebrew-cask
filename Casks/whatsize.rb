cask "whatsize" do
  version "7.6.6,7660"
  sha256 "7093b980281946f9d1cab92cb4249054c3027a6cca8508d8e31bab531f933883"

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
