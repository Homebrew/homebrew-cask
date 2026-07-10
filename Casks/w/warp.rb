cask "warp" do
  version "0.2026.07.08.17.54.stable_02"
  sha256 "43d782779a23cb52c2ac38944f6e5c787ee11c09db4ef029b6228cb6cd8eede6"

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
  depends_on macos: :big_sur

  app "Warp.app"

  zap trash: [
    "~/.warp",
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log*",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
  ]
end
