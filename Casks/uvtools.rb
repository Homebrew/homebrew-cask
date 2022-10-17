cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.7.0"
  sha256 arm:   "4daa81a5680ed115da825486f730daa10b4a2724d68801c33b01a0e3877c654f",
         intel: "a99c35b16c20413e5eac1aa90da97d0d2d11698e429ee0d1ac5eaaf35d4ace42"

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
