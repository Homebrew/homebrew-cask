cask "wolai" do
  arch arm: "-arm64"

  version "1.2.9"
  sha256 arm:   "d25706ac7b915a0cdb8bbced0db8e670e7a65c2b75c6fe8777afd4840469781a",
         intel: "61c6d25285164e2a5864988b24fc45d912de675320af9c81705493fb0b041635"

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
