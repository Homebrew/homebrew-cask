cask 'whatsize' do
  version '7.4.1'
  sha256 '322dea4611bf4019708cf325f6f8b2e0e48a43b9ffba06ffbad30d949dd0197f'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.tgz"
  appcast "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
  name 'WhatSize'
  homepage 'https://www.whatsizemac.com/'

  depends_on macos: '>= :sierra'

  pkg 'WhatSize.pkg'

  uninstall pkgutil:   "com.id-design.whatsize#{version.major}.pkg",
            launchctl: "com.id-design.v#{version.major}.whatsizehelper"
end
