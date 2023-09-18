cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.1"
  sha256 arm:   "eb429e97026587a2b69bb2282995d2a35c3734095a06bbd7af7d9dae9136fe4d",
         intel: "4224e919690da844a50cd096de4ea0d99dfce85641f0522d4466d1e50f57bd24"

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
