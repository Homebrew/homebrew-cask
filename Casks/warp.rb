cask "warp" do
  version "0.2022.09.20.08.08.stable_01"
  sha256 "1d328a2fec9cedaf98f6f7cb79b7f1ee5a6c16ce1b07ed4c76e16f7622da7208"

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
  ]
end
