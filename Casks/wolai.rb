cask "wolai" do
  arch arm: "-arm64"

  version "1.2.4"
  sha256 arm:   "a0292e2bc4ea79df7b58fcfc461508a7d4063ad11c96a8fde03261dfed9c27f1",
         intel: "fcb0ef0014b1657fe122a94a97b37bbee6988a4b3ed4e92464746d971ef246fb"

  url "https://cdn.wostatic.cn/dist/installers/wolai-#{version}#{arch}.dmg",
      verified: "cdn.wostatic.cn/dist/installers/"
  name "wolai for mac"
  desc "Cloud notes"
  homepage "https://www.wolai.com/"

  livecheck do
    url "https://static2.wolai.com/dist/installers/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/wolai",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
