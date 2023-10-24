cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.3"
  sha256 arm:   "d37b30143b39790787b872352db148e6d0e5de4f6b9ed114a0d04f628b1a909a",
         intel: "b8929152a374ff406335849db4cfc3f000e80325ad595573f43175ccf6f34f7e"

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
