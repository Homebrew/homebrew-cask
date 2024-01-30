cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "5f70ddfcac645f97cbd92fe4fe7aef9b5391a9b5827c7603143cbbaea93b4b97",
         intel: "94d983e9491061cb6a3eac299399feb9131b339a9fb7607ee304c7036e08fe59"

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
