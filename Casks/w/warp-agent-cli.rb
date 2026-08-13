cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.08.12.21.54.stable_00"
  sha256 arm:          "83e22ec4e7958940ce0f0357ca695a232b879e62f2d23e5fad6e9011c53c1a38",
         intel:        "c40ef9a5c2abda2be6711ce7407d85025e5363c52aad75b89a9a269993dfbeb4",
         arm64_linux:  "328e24e4d4cd079a623403baa14d215029d51332cbd317de2f33d4b6c55e68e2",
         x86_64_linux: "27c495401e4464516e22f82993eeac56404a89f2ae8a126bbb914e0ff93ee1a3"

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
