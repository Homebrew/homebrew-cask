cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.09.23.14.34.stable_01"
  sha256 arm:          "0aa602b8f861ecd766a0e186ea63ee2811707e881f4b595f32656e94ee2172fd",
         intel:        "6872ffd5b91cd282dfead3dbbdaa440f49c483a3039b37298c8e445bfb463580",
         arm64_linux:  "0e9f0368a30323daef360717fa9f6824e1150193ed1f62a73ea0c2dcbe9cdb3b",
         x86_64_linux: "61c8e0b0a0ec98ac9651b9be6f8fe9e9764c142d50ee7ba471a71b9714788063"

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
