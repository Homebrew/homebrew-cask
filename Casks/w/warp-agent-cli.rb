cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.10.14.08.27.stable_02"
  sha256 arm:          "0e7e816924ce068c2e553882f97b3434b9585bdfd45787a39b86f8c246ce1da5",
         intel:        "f9ebe6bd99669e91bbfafdd2ee1b492f33bb2644a775a51125d4c8eb1a1a14ce",
         arm64_linux:  "1afeaf83c260d9af991c517b6e2987740a2fbbc66fa9faef1be19fc1c58ea62b",
         x86_64_linux: "febfb03e93bd052983103e5ac3214848818471035b0c3ee6d5638b1e81b1a107"

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
