cask "wine@devel" do
  version "9.8"
  sha256 "66d7bfb25355faac350c4294d622f2ff0662a4ca68284391f89a7cfeaec77238"

  # Current winehq packages are deprecated and these are packages from
  # the new maintainers that will eventually be pushed to Winehq.
  # See https://www.winehq.org/pipermail/wine-devel/2021-July/191504.html
  url "https://github.com/Gcenx/macOS_Wine_builds/releases/download/#{version}/wine-devel-#{version}-osx64.tar.xz",
      verified: "github.com/Gcenx/macOS_Wine_builds/"
  name "WineHQ-devel"
  desc "Compatibility layer to run Windows applications"
  homepage "https://wiki.winehq.org/MacOS"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?((?:\d+(?:\.\d+)+)(?:-RC\d)?)$/i)
  end

  conflicts_with cask: [
    "wine-stable",
    "wine@staging",
  ]
  depends_on cask: "gstreamer-runtime"
  depends_on macos: ">= :catalina"

  app "Wine Devel.app"
  dir_path = "#{appdir}/Wine Devel.app/Contents/Resources"
  binary "#{dir_path}/start/bin/appdb"
  binary "#{dir_path}/start/bin/winehelp"
  binary "#{dir_path}/wine/bin/msidb"
  binary "#{dir_path}/wine/bin/msiexec"
  binary "#{dir_path}/wine/bin/notepad"
  binary "#{dir_path}/wine/bin/regedit"
  binary "#{dir_path}/wine/bin/regsvr32"
  binary "#{dir_path}/wine/bin/wine"
  binary "#{dir_path}/wine/bin/wine-preloader"
  binary "#{dir_path}/wine/bin/wine64"
  binary "#{dir_path}/wine/bin/wine64-preloader"
  binary "#{dir_path}/wine/bin/wineboot"
  binary "#{dir_path}/wine/bin/winecfg"
  binary "#{dir_path}/wine/bin/wineconsole"
  binary "#{dir_path}/wine/bin/winedbg"
  binary "#{dir_path}/wine/bin/winefile"
  binary "#{dir_path}/wine/bin/winemine"
  binary "#{dir_path}/wine/bin/winepath"
  binary "#{dir_path}/wine/bin/wineserver"

  zap trash: [
        "~/.local/share/applications/wine*",
        "~/.local/share/icons/hicolor/**/application-x-wine*",
        "~/.local/share/mime/application/x-wine*",
        "~/.local/share/mime/packages/x-wine*",
        "~/.wine",
        "~/.wine32",
        "~/Library/Saved Application State/org.winehq.wine-devel.wine.savedState",
      ],
      rmdir: [
        "~/.local/share/applications",
        "~/.local/share/icons",
        "~/.local/share/mime",
      ]

  caveats <<~EOS
    #{token} supports both 32-bit and 64-bit. It is compatible with an existing
    32-bit wine prefix, but it will now default to 64-bit when you create a new
    wine prefix. The architecture can be selected using the WINEARCH environment
    variable which can be set to either win32 or win64.

    To create a new pure 32-bit prefix, you can run:
      $ WINEARCH=win32 WINEPREFIX=~/.wine32 winecfg

    See the Wine FAQ for details: https://wiki.winehq.org/FAQ#Wineprefixes
  EOS
end
