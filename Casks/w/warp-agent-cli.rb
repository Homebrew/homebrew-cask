cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.10.07.08.29.stable_00"
  sha256 arm:          "ac700338f5fcec102a3fde1e1e672263267cee9bae601c597b0b97e1ec880bf8",
         intel:        "1c30c2f2eed47e25ec20b3af916662ad31790c5a31557b854993142ef69b2c3b",
         arm64_linux:  "6ac86c7e5fe8424400d1b7709b5bac2a880f8658c6c5912c277d73ac4a4da4a6",
         x86_64_linux: "a522a55d95eba6082f4d37e6aa721b3e6bea6f22cbe18840e3fafb64c75d0e7b"

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
