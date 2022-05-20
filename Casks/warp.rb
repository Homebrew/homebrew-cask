cask "warp" do
  version "0.2022.05.16.09.01.stable_01"
  sha256 :no_check

  url "https://app.warp.dev/download"
  name "Warp"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/"

  livecheck do
    url :url
    regex(/v(\d+(?:\.\d+)+\.stable_\d+)/i)
    strategy :header_match
  end

  auto_updates true

  app "Warp.app"

  zap trash: [
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log",
  ]
end
