cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.0.3"
  sha256 arm:   "5035946f738622c931051d88d10f4b250be21d03dfd58f386f88a0e7f112d4b0",
         intel: "cb6209d6d60a5900d301b0caa7c0911c977bb5543d4291b38274673512f39916"

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
