cask "warp" do
  version "0.2022.05.23.09.07.stable_01"
  sha256 "157cc5c6cd5baea2c92e2e675465ca3eba22b236efc0af081db04492107e1320"

  url "https://warp-releases.storage.googleapis.com/stable/v#{version}/Warp.dmg",
      verified: "warp-releases.storage.googleapis.com"
  name "Warp"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/"

  livecheck do
    url "https://storage.googleapis.com/warp-releases/channel_versions.json"
    regex(/v(\d+(?:\.\d+)+\.stable_\d+)/i)
  end

  auto_updates true

  app "Warp.app"

  zap trash: [
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log",
  ]
end
