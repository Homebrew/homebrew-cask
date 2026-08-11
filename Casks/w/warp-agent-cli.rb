cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.08.05.09.03.stable_01"
  sha256 arm:          "c5dae2b82787089264de4bfe36f66f9c7b4c9dbd006bcb9855d7f0adf8cb1877",
         intel:        "9d97106fc1d0064eb97aff2b1c625b5236127d7054a391df19014edf5240c6a7",
         arm64_linux:  "f6a5d7c2ec357ef1b392e9f2e245a05cd389e1e3ca025c1d6008455ecfd7f97a",
         x86_64_linux: "e6b9cac6447fbd7d147300fd582ff88c7afe7359f17f1a74afdde478fbcd0f5c"

  on_macos do
    depends_on macos: :sonoma
  end

  url "https://app.warp.dev/download/agent-cli/artifact?os=#{os}&arch=#{arch}&version=v#{version}"
  name "Warp Agent CLI"
  desc "Agentic development environment for command-line workflows"
  homepage "https://www.warp.dev/"

  livecheck do
    url "https://releases.warp.dev/channel_versions.json"
    strategy :json do |json|
      (json.dig("stable", "tui_version") || json.dig("stable", "version"))&.delete_prefix("v")
    end
  end

  binary "warp-tui-stable", target: "warp"
end
