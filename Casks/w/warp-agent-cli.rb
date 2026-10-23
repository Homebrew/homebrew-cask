cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.10.21.08.25.stable_02"
  sha256 arm:          "0202c429dbd84ac250452e9becc962521f16c5bea674ccf6ea27fa7b453d530a",
         intel:        "486304ec04d009c8a2eb2d18f8b747942615fa211e85d7aded3cc421b131349d",
         arm64_linux:  "fe3eb68e92cdbc29dcaa5509322dfc446fecb2a2bc4db9e289296ed932f0dd52",
         x86_64_linux: "312141589de3406f7eade19d01238d22ec71e0c1ed087375d6e2925fc2860637"

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
