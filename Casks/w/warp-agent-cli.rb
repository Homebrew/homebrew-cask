cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.08.18.02.52.stable_00"
  sha256 arm:          "d548d191b76af6b4feab44e1aca5f4fbe8b1285e38e289c167bcf9e383f6da36",
         intel:        "57a59132baa3c43708a7766d1f1a2b2ee42f3d3a40e0c396faa6fd17714502ac",
         arm64_linux:  "43813a13ec2155484eb1d921348c556ba05665e77b739482bb2a93e9e8886a40",
         x86_64_linux: "1befc7c07a2cca78aaaaeaa9a00e9bd166f36f694836898c29c3503da129db97"

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
