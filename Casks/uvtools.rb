cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.1"
  sha256 arm:   "a62d1b960a930403d702f64ec27df7202bb712f1f9b94e5f3ee42c48f66df35b",
         intel: "7ebd40656610b1c735e19e02940491920e3d6e16609c6528a18710e5645e35f4"

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
