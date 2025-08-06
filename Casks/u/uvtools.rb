cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.1.7"
  sha256 arm:   "dbd09514ed303ccebfdf8f276fb3f7ec2016e303ce44eb4cf75527ff2c1ede76",
         intel: "63d725a1c92c5ca3a171bf2f2c8e4983a890ed4020f9721a880af18387b611eb"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  disable! date: "2026-09-01", because: :unsigned

  auto_updates true
  depends_on macos: ">= :catalina"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
