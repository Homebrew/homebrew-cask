cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.7"
  sha256 arm:   "46aa9793e9861ff96fe69d9a9e16ba63665795cc920a165a689656d9479b0ee8",
         intel: "e400cb1ef4d6de4dcc362a912dad078b93dec948b08d56500e79f0353487ffd8"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
