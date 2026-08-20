cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.08.19.08.15.stable_01"
  sha256 arm:          "337844a82c3f0350be262f0306e47060b59cf892cd4027d3627c3411e9b4b2fb",
         intel:        "9cc8f39167a6cf16cc2dd665d1c9047e7e331f6fe7dd65b84eab9b59922102e8",
         arm64_linux:  "d96ad5bf89ca6c45028c789b8e87d4d09670c0beec8fd93d3191d3acd3e96b54",
         x86_64_linux: "e0059cc620c0d4f08c6988d9bc0625ad9b47dc9d8beb1be00c191e68ba2ee4ce"

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
