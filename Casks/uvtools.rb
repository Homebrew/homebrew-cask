cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.7.2"
  sha256 arm:   "a54513a71fb3ac8b8f342a016f2412dd751bbfc33ee0ce838bd437fe47df36d1",
         intel: "b402f9d22dd3302883e0af0865887f0089e6baba9fb01866df2e7d9714ce7e13"

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
