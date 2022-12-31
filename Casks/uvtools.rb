cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.4"
  sha256 arm:   "79e7fc5268144c9fc88bcf0999d895872d3cc5eee5703526952aabe271066fb7",
         intel: "e2f5cb1f9ab2ff53b4639286f41603269e43f7806680293cbda22a339fa281db"

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
