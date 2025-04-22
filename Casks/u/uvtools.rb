cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.1.0"
  sha256 arm:   "63f265777c2ed391fd09dc904af4e45394c207dd31d17f8f8e75291e8930478b",
         intel: "8d73c75eb0751325bf07bd997b3289cda5dab441c443617beb75a6e3a62b362c"

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
