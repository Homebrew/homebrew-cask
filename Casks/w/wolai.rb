cask "wolai" do
  arch arm: "-arm64"

  version "1.2.7"
  sha256 arm:   "bc69155ba94eb9e4b746cb8afd0876983b77dd8c7126691a0d7039376e215a9a",
         intel: "47081227adf4cb066e39b18b8a013a38a636261bf8d7ade72e4d329c99c872f6"

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
