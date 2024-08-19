cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.4.1"
  sha256 arm:   "4137593359c561c703288ec23a62ade632a0349b1a2838f3bb98de7260cfe058",
         intel: "568a203a46ac4f0966e3a91daa39424ba9318625ad32bb271b699f429f33674d"

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
