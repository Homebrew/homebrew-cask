cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.18.08.17.stable_04"
  sha256 arm:          "eff016d3bb602bdad35eaac754b965837de23a1804d4de07e31154ad038349d8",
         intel:        "722487292fc0f7a9be2f22c966a17978f391552c24d9ea4616753ca6dda85798",
         arm64_linux:  "bed0b0ab901881f2c00c29d252ba6b6de48c42aafc2371da3d00f47a01a44e4a",
         x86_64_linux: "0584e72707e370d499e6ae70d575feee4537dbeb41f046db310b78caec04d215"

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
