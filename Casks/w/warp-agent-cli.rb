cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.09.30.08.29.stable_01"
  sha256 arm:          "debb8fd32f6e68790ea144cece088f1161e12956e0e0a360112fbd60d735564a",
         intel:        "4f3542da228a1772826becefa144f8d2a20a4c7ed50d181f5e3c101681674abe",
         arm64_linux:  "9c257831a5a06876afe23c56ac49c4bd37a740b757406ce7ee73d7fa0f0f8afa",
         x86_64_linux: "5961fe97caefc165f9428f27a3c2a488b2bbe8cbddcf66af4bc9ba8c22ddc997"

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
