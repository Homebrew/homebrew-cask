cask "whatsize" do
  version "7.6.5,7650"
  sha256 "f84d15428b149534ff8a11a83c9a4a7b6fb345d5e84fd83bade0a3d78abd28c0"

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
