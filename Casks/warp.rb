cask "warp" do
  version "0.2022.04.11.09.09.stable_02"
  sha256 "44683a95b54a1d4e11a2a7e11dd6ef406214e5126a7cdc92ed576226ec34466a"

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
