cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.03.17.08.stable_00"
  sha256 arm:          "31166c20a0ef28c08878b4b8d5ae7f101484a1d8fb855ac93209bb942859c708",
         intel:        "1c44579430cab3cf730a679568ab6c485d98f889812e65a5f82e0c36dfc84653",
         arm64_linux:  "7a91e1d6fc9e50d5902a394b64da68e7c0a554865c09c012e7ed4207a006eeca",
         x86_64_linux: "52e21b334d2fdbb63c417aa71c0da256a51e23860f2a66121232fafa8f98c28c"

  on_macos do
    depends_on macos: :sonoma
  end

  url "https://releases.warp.dev/stable/v#{version}/tui/#{os}/#{arch}/warp-tui-stable-#{os}-#{arch}.tar.gz"
  name "Warp Agent CLI"
  desc "Agentic development environment for command-line workflows"
  homepage "https://www.warp.dev/agent-cli"

  livecheck do
    url "https://releases.warp.dev/channel_versions.json"
    strategy :json do |json|
      (json.dig("stable", "tui_version") || json.dig("stable", "version"))&.delete_prefix("v")
    end
  end

  binary "warp-tui-stable", target: "warp"

  zap trash: [
    "~/.local/bin/warp",
    "~/.warp",
    "~/Library/Logs/oz/warp.log*",
    "~/Library/Logs/warp-cli",
    "~/Library/Logs/warp.log*",
  ]
end
