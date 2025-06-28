cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.1.4"
  sha256 arm:   "515f4fd94c00f4afd7d66e2949d6d93ebf240c8dd4e1f2d8bf4bf5633da0a58c",
         intel: "a1b24175f21cbfef918147597de50df5608a59135da861ab40c20acd0fabda71"

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
