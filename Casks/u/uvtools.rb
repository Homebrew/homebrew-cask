cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.5"
  sha256 arm:   "b2d3d2a1e3277cecb04946e4e5bf73bded3d697e943fb6347e3d353352913667",
         intel: "cd7a9e6c7d9b7ad58de9da55c284562f24304695dd5c4c46d974cc986b4f8d94"

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
