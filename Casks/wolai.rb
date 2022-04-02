cask "wolai" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.2.1"

  if Hardware::CPU.intel?
    sha256 "0fa0994420a441dcec0dfa7df5300a9f002533909c1db9d9d61bad7d684fb3b3"
  else
    sha256 "13fcf6db03934d7f517e0a4801eb024d15a8420385f83be3439b0cc12e1eef67"
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
