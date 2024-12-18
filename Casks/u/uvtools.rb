cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "38d12d55553e26ca8a080a54d5aeba20e21c0e30263fea28328bcc736b77acca",
         intel: "b91df43b4c7e5ebebac8628cc852646aa21907f864aab9da738bd8e943101e55"

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
