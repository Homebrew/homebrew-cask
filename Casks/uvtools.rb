cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.8.1"
  sha256 arm:   "651de87ee4c009be5450f80782ae3916a367126c8ca87a101a8fdecda6eca28c",
         intel: "b79b9c7f88effdef062052f5c085769a9a4940c68a7536485c6f9020a838eb7d"

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
