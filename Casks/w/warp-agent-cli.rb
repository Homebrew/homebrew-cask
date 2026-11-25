cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.18.08.17.stable_06"
  sha256 arm:          "86201bc9a0b540c252e44ca31fdda1d70c6893c6b153314eb659641822e17f5d",
         intel:        "e78d89e85eec14dd355d5946f646438587ea166f7589b42c7d05cf29949dcba4",
         arm64_linux:  "130db3a9d75a1fe9aff14d51a15e14e08cd76b48684fdfd182996ff459df0b6f",
         x86_64_linux: "0e27c718e44c2f75ec24ef140521f5e046a5139f3493a30d62b82e6a7f9a9817"

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
