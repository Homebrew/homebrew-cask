cask "wolai" do
  arch arm: "-arm64"

  version "1.3.5"
  sha256 arm:   "4cc56e0f16c4ed886e414066e3fb976c7b609e64f869955a45bf4aab017b849b",
         intel: "9c1ea8712b3dc8991c410f00213f206841f4392d2710e406e3fbdc9d3a5c7a4b"

  url "https://cdn.wostatic.cn/dist/installers/wolai-#{version}#{arch}.dmg"
  name "wolai for mac"
  desc "Cloud notes"
  homepage "https://www.wolai.com/"

  livecheck do
    url "https://static2.wolai.com/dist/installers/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/wolai",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
