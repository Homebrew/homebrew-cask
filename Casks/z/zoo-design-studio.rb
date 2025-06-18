cask "zoo-design-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "9f4f730b89906193775d7899d3e9bb5c2c0c0f45bc30c89a4e04d1c75c5ca617",
         intel: "5b5f8e8829711e19c4701133627c2e060ffcee70ab4e5524848c21d3cc10d7f0"

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
