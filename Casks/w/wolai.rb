cask "wolai" do
  arch arm: "-arm64"

  version "1.2.10"
  sha256 arm:   "0f6cf997a7bd82197ef58245f2099a6c3de3d5d695f51af306d6f1512f27a94e",
         intel: "a946f416991fff1c502fb84d0a07fcaa7fb8ccc6e2879af3ab7187210619be6d"

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
  depends_on macos: ">= :high_sierra"

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/wolai",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
