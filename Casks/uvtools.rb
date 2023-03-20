cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.12.0"
  sha256 arm:   "6f161652f25d899d8603b55a8280fa2cf99ac4a85ce99254a51a1c355909b9f6",
         intel: "140d189d40e84fc31a58e3b506a830286672785ca021bd5d212dec0ddc0b6c8b"

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
