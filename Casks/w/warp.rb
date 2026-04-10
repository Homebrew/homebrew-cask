cask "warp" do
  version "0.2026.04.08.08.36.stable_02"
  sha256 "c0e35478ca0d1754d1a1e1bd47914ae365b9fb8a03b12d78e1d7cc36c28e50c6"

  url "https://app.warp.dev/download/brew?version=v#{version}"
  name "Warp"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/"

  livecheck do
    url "https://releases.warp.dev/channel_versions.json"
    strategy :json do |json|
      json.dig("stable", "version")&.delete_prefix("v")
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Warp.app"

  zap trash: [
    "~/.warp",
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log*",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
  ]
end
