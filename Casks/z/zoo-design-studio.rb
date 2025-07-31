cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.12"
  sha256 arm:   "78d248e4baf01751b08c38cdf75d2c6cfa359b9e9ed0a84013a94c5b85fb9f14",
         intel: "2f66109c0bbab614b1aaee1e052b3850526344bb5d6c063353c57f4ac91a574a"

  url "https://dl.zoo.dev/releases/modeling-app/Zoo%20Design%20Studio-#{version}-#{arch}-mac.zip"
  name "Zoo Design Studio"
  desc "Professional CAD platform enhanced with ML through Text-to-CAD"
  homepage "https://zoo.dev/design-studio"

  livecheck do
    url "https://dl.zoo.dev/releases/modeling-app/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Zoo Design Studio.app"

  zap trash: [
    "~/Library/Application Support/Zoo Design Studio",
    "~/Library/Caches/Zoo Design Studio",
    "~/Library/Logs/Zoo Design Studio",
    "~/Library/Preferences/com.zoo.design-studio.plist",
    "~/Library/Saved Application State/com.zoo.design-studio.savedState",
  ]
end
