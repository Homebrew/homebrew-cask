cask 'whatsize' do
  version '7.3.2'
  sha256 '60f62ae68fbc60e71d00496163f71fcb2c3f7bc244658fd43761ce352fd71012'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.tgz"
  appcast "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
  name 'WhatSize'
  homepage 'https://www.whatsizemac.com/'

  depends_on macos: '>= :sierra'

  pkg 'WhatSize.pkg'

  uninstall pkgutil:   "com.id-design.whatsize#{version.major}.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
