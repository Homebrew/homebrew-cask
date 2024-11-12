cask "wine@staging" do
  version "9.17"
  sha256 "aff0725f799ee1fdfce0b55abcadf765d2b45db9f4c1fdd019d51530773a5876"

  # Current winehq packages are deprecated and these are packages from
  # the new maintainers that will eventually be pushed to Winehq.
  # See https://www.winehq.org/pipermail/wine-devel/2021-July/191504.html
  url "https://github.com/Gcenx/macOS_Wine_builds/releases/download/#{version.major_minor}/wine-staging-#{version}-osx64.tar.xz",
      verified: "github.com/Gcenx/macOS_Wine_builds/"
  name "WineHQ-staging"
  desc "Compatibility layer to run Windows applications"
  homepage "https://wiki.winehq.org/MacOS"

  # Not every GitHub release provides a `wine-staging` file, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?((?:\d+(?:\.\d+)+)(?:-RC\d)?)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^wine[._-]staging[._-].*?$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: [
    "wine-stable",
    "wine@devel",
  ]
  depends_on cask: "gstreamer-runtime"
  depends_on macos: ">= :catalina"

  app "Wine Staging.app"
  dir_path = "#{appdir}/Wine Staging.app/Contents/Resources"
  binary "#{dir_path}/start/bin/appdb"
  binary "#{dir_path}/start/bin/winehelp"
  binary "#{dir_path}/wine/bin/msidb"
  binary "#{dir_path}/wine/bin/msiexec"
  binary "#{dir_path}/wine/bin/notepad"
  binary "#{dir_path}/wine/bin/regedit"
  binary "#{dir_path}/wine/bin/regsvr32"
  binary "#{dir_path}/wine/bin/wine"
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
        "~/Library/Saved Application State/org.winehq.wine-staging.wine.savedState",
      ],
      rmdir: [
        "~/.local/share/applications",
        "~/.local/share/icons",
        "~/.local/share/mime",
      ]

  caveats do
    requires_rosetta
  end
end
