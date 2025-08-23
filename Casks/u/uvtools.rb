cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.2.0"
  sha256 arm:   "c429f810db9173cc7e4749936ffb567891f83b8724a1915e0d39b5333d112939",
         intel: "9a2f761db8f8ca733674ce140b2322753ffd61efe48f40b0d67fffc9082bb9a3"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :catalina"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
