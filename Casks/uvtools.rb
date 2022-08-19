cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.6.1"

  on_intel do
    sha256 "3083e2b71f5f717bf54ff56c2a189b716be26aee7ea4878c327be448172993d2"
  end
  on_arm do
    sha256 "b760e0eb5416a2aff849f42e87818b8a13b8341436a023b6044efea5778c30f6"
  end

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
