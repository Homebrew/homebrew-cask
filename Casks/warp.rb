cask "warp" do
  version "0.2022.04.18.09.08.stable_04"
  sha256 "5dcc2178c7f84ee295187f9361c9c4d6a5026ba8defd2e9ae6d8c4290278b047"

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
