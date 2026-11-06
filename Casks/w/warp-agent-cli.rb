cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.04.08.17.stable_01"
  sha256 arm:          "699077bd30892d1777449007191f62209c06e7e386121b74a29d7ccb92460b3e",
         intel:        "a364e703469701ea803b3edcc11c927ac2012bda9bf3d9d66eb1b5fbc7a68da6",
         arm64_linux:  "ac123ceb1ae3b57ec990f1da285acdc78c30a2084160cca54ae5ccfb04f646cd",
         x86_64_linux: "4f4b8d3cf05f21018555ae7656a574673ad821b4e18c0c97dca59557949aef5e"

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
