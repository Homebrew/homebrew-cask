cask "warp" do
  version "0.2023.09.19.08.04.stable_00"
  sha256 "cfd839ffdedd784fe3d01478ae8361ea6982845c22fd5154638d95781ae97314"

  url "https://app.warp.dev/download/brew?version=v#{version}"
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
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
  ]
end
