cask "wolai" do
  arch arm: "-arm64"

  version "1.2.6"
  sha256 arm:   "010f108e6fdc4751f0ad2b05a92eb5cde0970c5cbad8a8f5105ab00425f0a2f0",
         intel: "bb24a412f15f7a5e9e10413bc360507d5153d46d1cabbf5b072976a45081487f"

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
