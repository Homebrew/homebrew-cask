cask "warp" do
  version "0.2025.08.20.08.11.stable_01"
  sha256 "225ce8a194f532a0f7b84233bd587bdc13519b906785b63c227a45225b71b41b"

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

  app "Warp.app"

  zap trash: [
    "~/.warp",
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log*",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
  ]
end
