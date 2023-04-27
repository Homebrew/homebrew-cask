cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.13.0"
  sha256 arm:   "39ef7658ad4e052688831fe4b7a61ec2af9ebc6d23d3c9185c03f87d4d5ee3b8",
         intel: "0ca441bf845bc3ac226a3dae318862ebeb47887db0758cba2dcfacd991f82629"

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
