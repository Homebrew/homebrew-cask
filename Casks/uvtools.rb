cask "uvtools" do
  version "2.29.0"
  sha256 "f052245764b060e7306c3e5c540091c23f139678271241d949cdf32b99d65330"

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
