cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.5"
  sha256 arm:   "956a3c8ccab7bd73d0e194c176bc898c030565ef507a35270063a5cf8506ed91",
         intel: "8513b26ebaa277a5612c7552bb876490f9ceeff6b045bee733c4966f77ed973b"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
