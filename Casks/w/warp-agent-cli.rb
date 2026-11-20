cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.11.18.08.17.stable_01"
  sha256 arm:          "5789507cac6860b3454e070fb53305bb30da5eefbffdb8677e18f425d10068ec",
         intel:        "b40234ce69120218e6e64a02ead870d0c8933bd0873c07661f33661e494aef00",
         arm64_linux:  "44cde15fa5e580ba10e301a9ae3d1454761cdc8cdebc6e46b4eb99c2c2d4a7b5",
         x86_64_linux: "697e8f740b0b21f1b289ef8a6aa80dd6b0a06bf1c868a5e630a8bfb6752b255d"

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
