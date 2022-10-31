cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.8.0"
  sha256 arm:   "1e0bdc9ae1fdd9abab6c714221d686c4d3e79b9198eb6f631887dec645ea8434",
         intel: "f8e6c58fe822c06de46b0fdf09b7a3ee0b177d10e06699be6d15bc5eb84eff9e"

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
