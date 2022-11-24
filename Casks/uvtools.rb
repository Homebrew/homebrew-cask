cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.8.3"
  sha256 arm:   "61e43364c20b63e534d33580b32918a57c01179075636a168bc0c0bd59ee893d",
         intel: "33fbd99f07f3be5b74716197755f5e22a3920f4cf801eff888913863ec7633ec"

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
