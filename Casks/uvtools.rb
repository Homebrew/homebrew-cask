cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.13.3"
  sha256 arm:   "19ff74eedd374c9cf8bd0e162b420bae4cf9ce729cba437e2ffaa267fbdca2f7",
         intel: "73de6608da8edf3a90112888998ac924c8f8935914f62296bc8fd5f93fc137f1"

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
