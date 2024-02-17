cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.2.2"
  sha256 arm:   "ab3b130ee4d28b90bf729ec42702bf83422349a64f913409fcea0a10ae90dca0",
         intel: "5588304844d1cae67618ff024593babbe52bf6199c6b6e2ed793e0c3cfb9e30e"

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
