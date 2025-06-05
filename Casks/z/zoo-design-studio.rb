cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "fe4aa68bf07cb1232af2b54ecf4341e297471968141eb958bcfc58fa6d072a48",
         intel: "cb9f6a8f2f1cb98dbe79d9bdf752a85c713bfe7f3a6de67c00b38edcccfa8d2a"

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
