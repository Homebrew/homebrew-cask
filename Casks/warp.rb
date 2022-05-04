cask "warp" do
  version "0.2022.04.25.09.59.stable_03"
  sha256 "cde78f7437d427e146650c25a52808fcfb95d04ce834fd45f340d7b4a8494347"

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
