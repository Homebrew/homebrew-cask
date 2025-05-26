cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 :no_check

  url "https://github.com/KittyCAD/modeling-app/releases/download/v#{version}/Zoo.Design.Studio-#{version}-#{arch}-mac.dmg"
  name "Zoo Design Studio"
  desc "Professional CAD platform enhanced with ML through Text-to-CAD"
  homepage "https://zoo.dev/design-studio"

  livecheck do
    url "https://github.com/KittyCAD/modeling-app/releases/latest"
    regex(/Zoo\.Design\.Studio[._-]v?(\d+(?:\.\d+)+)[._-](?:arm64|x64)[._-]mac\.dmg/i)
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
