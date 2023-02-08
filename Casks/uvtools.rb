cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.11.0"
  sha256 arm:   "d3a6b45b5604a993c0a4354f25b1924a1e24119432643cb13d0d3a07de524c99",
         intel: "ba4b498f10dcf3a4d46a976c1f08314d830292c458ae96a1237cf69a1a8e3209"

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
