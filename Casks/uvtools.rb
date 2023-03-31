cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.12.2"
  sha256 arm:   "e2751a92e9dfd1a5d91b738a6011baac440336c3f1af6fb8fa5b06c48e6587b4",
         intel: "e42a44e6410d6088a6166c6d5dba672bb03d2ee18d2254c7e589f1d5eae4b234"

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
