cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.2"
  sha256 arm:   "fd34f2a031bedfb5b8363aebab95cf3ec7ab2af4a1bed30d41b94c21275de2c0",
         intel: "76005e66962b2a2cc500b3377d51a57ec7ab16458f708c967871c3e982c635e4"

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
