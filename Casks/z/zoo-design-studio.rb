cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.13"
  sha256 arm:   "bcef75427b99340067ec0dfe8aacc862fb116399b52c5672be949956f3ff51d1",
         intel: "ca94ea7535945b7c485cbdff6448370937d953688d10bf5728fdd48be8b34ca7"

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
