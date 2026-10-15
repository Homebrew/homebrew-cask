cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.10.14.08.27.stable_01"
  sha256 arm:          "bf8691edc5c3894f77d5ce3f35354bf4ed87aaeea2091788071dd18bb10c6461",
         intel:        "ed3963f6ff4aeea467ddea00fc98d0b0fdcad96b54aed15595a8a82cd3a1410b",
         arm64_linux:  "9a91577b9f985b304faaae0ad6d13446a7b073e09ac1087188cb89ea3943cc09",
         x86_64_linux: "52321489fd536fc17e3c4dbc67a818edc51f244573e5065b1b6389283cba2afa"

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
