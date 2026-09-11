cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.09.09.08.26.stable_02"
  sha256 arm:          "4b14d9829dfd7d7c04eecab63cd34ef4475c26b5aff1253d7ed9ca6a26b97b31",
         intel:        "fbf84745fc64fa5918a6e45a6ec69b4051a53bafd6f894261b8538f6305fb5de",
         arm64_linux:  "daa18ceefe5ff6e7e0cfe6dfba6777c545afa137b5a0ef93b2724f6861a20687",
         x86_64_linux: "4daa3905aeb629ffaa75967170d993fee94ffb04b34e7af91262ea6d6726c796"

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
