cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.18.08.17.stable_03"
  sha256 arm:          "d5b7c0bb4ae0641574a30c0ed671c4fab92b08bcb05fcb9eac10b2579e89b9c9",
         intel:        "c775b120ee358e1d19ab71ad8c398ada16c51fffd6facd4a49b34c3b901cc1f8",
         arm64_linux:  "9594a19b8da06d6bbcc2f6ce54bba428a2d63c59beb446b66796ff08db4acc1b",
         x86_64_linux: "a7e3eb2f2ebf5fe550dd6685eb9c05e6d44558af00d8db1237da61d0fbd327c5"

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
