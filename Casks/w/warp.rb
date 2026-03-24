cask "warp" do
  version "0.2026.03.18.08.24.stable_03"
  sha256 "11da69652359eaca056a04d55ff781a7ac5064337284f2da6cdd84e030b24bdd"

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
