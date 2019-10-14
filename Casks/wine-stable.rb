cask 'wine-stable' do
  version '4.0.2'
  sha256 'e621f19f59d88340790aa7b77bf7718f000bf774a2b80eb1cfd66abe86ef79af'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-stable-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html'
  name 'WineHQ-stable'
  homepage 'https://wiki.winehq.org/MacOS'

  conflicts_with formula: 'wine',
                 cask:    [
                            'wine-devel',
                            'wine-staging',
                          ]
  depends_on x11: true
  depends_on macos: '<= :mojave'

  pkg "winehq-stable-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]
  binary "#{appdir}/Wine Stable.app/Contents/Resources/start/bin/appdb"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/start/bin/winehelp"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/msiexec"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/notepad"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/regedit"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/regsvr32"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/wine"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/wine64"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/wineboot"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/winecfg"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/wineconsole"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/winedbg"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/winefile"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/winemine"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/winepath"
  binary "#{appdir}/Wine Stable.app/Contents/Resources/wine/bin/wineserver"

  uninstall pkgutil: [
                       'org.winehq.wine-stable',
                       'org.winehq.wine-stable-deps',
                       'org.winehq.wine-stable-deps64',
                       'org.winehq.wine-stable32',
                       'org.winehq.wine-stable64',
                     ],
            delete:  '/Applications/Wine stable.app'

  caveats <<~EOS
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end
