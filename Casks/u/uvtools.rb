cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.1.5"
  sha256 arm:   "c051d9f1c970b3b4089984b9a3681701f7d1e832577cdc509f838c4ef0012538",
         intel: "18818ff7250ea8a5d962f3adb866172c8118cadc5d37c2fa6e5f85054ffc0601"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
