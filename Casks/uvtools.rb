cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.8.2"
  sha256 arm:   "7e1f27e7cb7dcaa877f47b69097e8f60f95102fd959ff133ba6ef5391d2124c1",
         intel: "58fea8995b37b69ebe6cc6a91cc4688e74f303614243d89bd0e4028e56646029"

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
