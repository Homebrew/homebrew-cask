cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.13.2"
  sha256 arm:   "5031f33007b3d463f22763a758f715e8958aa90dd8411501e570bf100d9f5326",
         intel: "21edf8154ac4e13a4bdfe9e5ab193a72c21227c25855fba73ea63fd8dcc522c2"

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
