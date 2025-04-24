cask "warp" do
  version "0.2025.04.23.08.11.stable_01"
  sha256 "d5d250cf118f5bae6eefdba098d52c69b3df42e051be3b8b3a25b73257af0512"

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
    "~/Library/Application Support/dev.warp.Warp-Stable",
    "~/Library/Logs/warp.log",
    "~/Library/Preferences/dev.warp.Warp-Stable.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
  ]
end
