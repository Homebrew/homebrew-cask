cask 'wine-stable' do
  version '3.0.4'
  sha256 'a13c4755d837439a0861472885eea0956b39a5eafaf0be674784764691da19ff'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-stable-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html'
  name 'WineHQ-stable'
  homepage 'https://wiki.winehq.org/MacOS'

  depends_on x11: true

  pkg "winehq-stable-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]
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
