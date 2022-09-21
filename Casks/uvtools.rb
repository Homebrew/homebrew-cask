cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.6"
  sha256 arm:   "5a84bda9f2bbb33c782b595922bf2f53219e42da1414dc7c18f5da25fe73e43c",
         intel: "75dce6ab067eada2ddc83dbde221726aa01264a00f9b039304a61dc375d7155b"

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
