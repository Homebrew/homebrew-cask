cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.11.2"
  sha256 arm:   "a933753eb1f0c7c6487384fe2129bce5ec078cc409a53ed4ecf29c05ad194db0",
         intel: "43c400eeb15bc0555d3ef4db26fd2d7cd69670daaa3d74d08eb8cbcb121a4194"

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
