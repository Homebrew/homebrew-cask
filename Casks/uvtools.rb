cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.14.1"
  sha256 arm:   "6e37fbdc599aeb0325ccf099ff260b3e4f0c3674ab9603b4f45d4b2197ea1f53",
         intel: "5d4c43e7004d1de0b99b3587ccf7a62ba4a30556807712987c0b8b65c9de12a0"

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
