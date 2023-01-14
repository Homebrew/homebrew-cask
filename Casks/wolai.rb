cask "wolai" do
  arch arm: "-arm64"

  version "1.2.5"
  sha256 arm:   "c0bec35d6d1bc8ea21a2cf9bd7c131599c8c6dd5fbbd5ca63b1a1485e09362a8",
         intel: "9bfb86a832c6b1c4dc6b6b70c00186633cfa0dd617b655c7c0e34096c268937c"

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
