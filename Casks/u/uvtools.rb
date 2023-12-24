cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.6"
  sha256 arm:   "0b9ab8fb3810b8ea39c52deba5d487c0c4e71c4d65437b6ee8557d182e7e7ebf",
         intel: "6263150a11eb88604cfd839dd1c9c0c89abf0ebb0dea615774bac00d39b42b3d"

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
