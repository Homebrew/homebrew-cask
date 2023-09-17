cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "3f020d6a7286b3ca0462e36c69954eb5755fa029785208a2ccb286f119c34a23",
         intel: "f6b34a604436b768f99590479643587229af3fb05fa3e0efd9be37c4627210c3"

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
