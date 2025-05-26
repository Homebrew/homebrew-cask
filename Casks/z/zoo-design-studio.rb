cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "6f2b2b2b7ff6d06de22e211cbb9b15ee74dc7f37ba9b3b3a02ff40f0a3b9e8ae",
         intel: "7979ed18b03f512810b6dfcebd7cca618b811c2e5f41f22c631d6fe9b4d14482"

  url "https://dl.zoo.dev/releases/modeling-app/Zoo%20Design%20Studio-#{version}-#{arch}-mac.zip"
  name "Zoo Design Studio"
  desc "Professional CAD platform enhanced with ML through Text-to-CAD"
  homepage "https://zoo.dev/design-studio"

  depends_on macos: ">= :big_sur"

  livecheck do
    url "https://dl.zoo.dev/releases/modeling-app/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Zoo Design Studio.app"

  zap trash: [
    "~/Library/Application Support/Zoo Design Studio",
    "~/Library/Caches/Zoo Design Studio",
    "~/Library/Logs/Zoo Design Studio",
    "~/Library/Preferences/com.zoo.design-studio.plist",
    "~/Library/Saved Application State/com.zoo.design-studio.savedState",
  ]
end
