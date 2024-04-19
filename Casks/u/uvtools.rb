cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "09d329ba718b11436cc38a2e1b0968fbeba5706cec66301e8d0fd93305fcf889",
         intel: "8a0f4868dfb727cb26038a87b2df65261d9de86e6080b8a9d2387abbfaafc331"

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
