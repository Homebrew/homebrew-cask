cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.11.08.17.stable_01"
  sha256 arm:          "324c9496ea1bf43029481dbd390d74053cb07f9da2e012bf2cf293b59c1a5354",
         intel:        "03032ca525366fe3f52bba179257e8f91e57b641f985f90480d006b1db4fffca",
         arm64_linux:  "b676018ceae166c443ef339595a9cdcccee6022c2ff501511dbe969044971ef8",
         x86_64_linux: "d755f46ee314f5beef79ba62b55835f5d95f04db0cff4aab55139ce401c44e29"

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
