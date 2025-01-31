cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.0.6"
  sha256 arm:   "954f8df16af1fbd889be641e939a12760ee508ae55cd0fc3417ccbe69b34ba35",
         intel: "1fc4fa09df3f986cfd88c1b085f09cbab9dbeed71d1f54f63eddc03542940923"

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
