cask "wolai" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.2.0"

  if Hardware::CPU.intel?
    sha256 "1d3fc5909fb80ab12672ce298e013fcf1fbb69679cf9e10ee93821ef6cda7e9c"
  else
    sha256 "072f3204dddf42b44802564420ed195d866bf37201fc9c503fb9a04aa8c477c6"
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
