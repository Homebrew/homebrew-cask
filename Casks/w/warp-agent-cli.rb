cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.09.02.08.27.stable_01"
  sha256 arm:          "22788b8da86871f501a5dacb90d3d2ba5ef65f6e7628dd9272888918e9042aee",
         intel:        "942f0dda1ba21bc3270bfe79178b20d6edec0d80f25539e56c88787c556c1d55",
         arm64_linux:  "1e26c0ae5cb1fcbfa822172f2d4ae104ffb0f03d1a4c45526695aca626745411",
         x86_64_linux: "ff24ffd32dc60d863832041a1bdcc60b994f5bac2abc208f909546684f707409"

  on_macos do
    depends_on macos: :sonoma
  end

  url "https://app.warp.dev/download/agent-cli/artifact?os=#{os}&arch=#{arch}&version=v#{version}"
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
    "~/Library/Logs/warp-cli",
  ]
end
