cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.09.16.08.27.stable_02"
  sha256 arm:          "06b6594c1cd9f612e976ae97ca0f6041d7124d29858049001bf49172ccd80c6b",
         intel:        "b0ad445a558073a5cd1e54639a44236938d65df1ac7af44719654764667077f4",
         arm64_linux:  "37f9717025f0cd3266b18b06703a84ad4175a16eaa2c076fd813bc8788da8a14",
         x86_64_linux: "2ce34c056ecf7dab33af13983af03139bf6c4bd0041e27bdfad987910fcb4332"

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
