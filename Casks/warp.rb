cask "warp" do
  version "0.2022.05.02.09.00.stable_00"
  sha256 "28e9cdbb1be1aa5e5522302bd1356bbb1843d9a755bdcfe2091cd660f1d34e4a"

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
