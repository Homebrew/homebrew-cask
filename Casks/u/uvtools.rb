cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.0.4"
  sha256 arm:   "6564cc40a2b0926eef54858b95e62ce5b3ec4dc545b12f4024211f90a46adb14",
         intel: "297ee1430d0c2474458d064bd5f0c59ffdc218c54914dba03999009bc862e4ff"

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
