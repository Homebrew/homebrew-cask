cask "wolai" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.2.3"

  if Hardware::CPU.intel?
    sha256 "e33b49fb41a264006d3e59b3ffad431f6aa1e70be24d0a2d07b9c128bf17f5b9"
  else
    sha256 "7df19bc987f827855524c2250fe81ca478aa05239c448060104c57a4cb30d277"
  end

  url "https://cdn.wostatic.cn/dist/installers/wolai-#{version}#{arch}.dmg",
      verified: "cdn.wostatic.cn/dist/installers/"
  name "wolai for mac"
  desc "Cloud notes"
  homepage "https://www.wolai.com/"

  livecheck do
    url "https://static2.wolai.com/dist/installers/latest-mac.yml"
    strategy :electron_builder
  end

  app "wolai.app"

  zap trash: [
    "~/Library/Application Support/wolai",
    "~/Library/Saved Application State/com.wolai.app.savedState",
  ]
end
