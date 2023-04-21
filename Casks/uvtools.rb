cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.12.3"
  sha256 arm:   "0d615be7e57b71d6386e24685352c0dd62d9b6ee4345026c714ec537f6703aea",
         intel: "e6017c8b0e9974f9532036c0132d72373e17d654a5b693527d3c67bb98a02e92"

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
