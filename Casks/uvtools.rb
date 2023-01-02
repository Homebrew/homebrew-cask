cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.5"
  sha256 arm:   "6648fb0f989a40445a2ebf3e24eafb3a348fde446f2aa410a67ea24960055cd2",
         intel: "82b040cebd2506bbeff677dc6562020a6f09bc1daffe0caec3f7d5ab55eb6efa"

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
