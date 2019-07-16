cask 'whatsize' do
  version '7.0.9'
  sha256 '2ae6ce820da73dec9da3cb63437ae7e2fbd7c1347b81dba11cfa72566386502f'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.tgz"
  appcast "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
  name 'WhatSize'
  homepage 'https://www.whatsizemac.com/'

  depends_on macos: '>= :sierra'

  pkg 'WhatSize.pkg'

  uninstall pkgutil:   "com.id-design.whatsize#{version.major}.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
