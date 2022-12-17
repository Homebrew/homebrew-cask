cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.3"
  sha256 arm:   "02ec719445a3a41057cad32e72511ee3ab3be4e36421527593c26c5dd29c15c2",
         intel: "775aeb95a278784d9da367d97d206147f97f21d6989514aad3472c87d7f7961b"

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
