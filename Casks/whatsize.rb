cask 'whatsize' do
  version '7.1.1'
  sha256 '09ee57148354e0dc7f8d59b8a8d1fb5a6c60d199ddf777db713903de7499ff26'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.tgz"
  appcast "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
  name 'WhatSize'
  homepage 'https://www.whatsizemac.com/'

  depends_on macos: '>= :sierra'

  pkg 'WhatSize.pkg'

  uninstall pkgutil:   "com.id-design.whatsize#{version.major}.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
