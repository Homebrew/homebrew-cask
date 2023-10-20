cask "wolai" do
  arch arm: "-arm64"

  version "1.2.8"
  sha256 arm:   "c013fbe063bd9b59b560562519f602a6d61c6116adc8178829c8f0401f389221",
         intel: "d4878217d2c588933448c3cad34d033af74c1605786820dbbc1d2e7b341c4bbb"

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
