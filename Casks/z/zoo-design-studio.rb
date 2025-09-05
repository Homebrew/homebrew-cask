cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.17"
  sha256 arm:   "e8cbe11c0f0f76b95bb590f75bf116f8c8d2660f9478772cc708a1e643c84dd3",
         intel: "08d39dacdfed1b00b67108ac1ab96e2f9126716750ac05c415099020cfa79d79"

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
