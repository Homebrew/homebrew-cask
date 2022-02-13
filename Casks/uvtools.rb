cask "uvtools" do
  version "2.28.0"
  sha256 "f2d44b40e62836f36973d830b2b3634b99260c3ed465449a6d95bba15fe88d5c"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-x64_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
