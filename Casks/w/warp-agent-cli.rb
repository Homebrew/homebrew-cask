cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.10.14.08.27.stable_03"
  sha256 arm:          "ea7c5b6206f541a201d3f818d2383ee619d941667a87799cc69803e0cbc47d91",
         intel:        "d75d9959a5f33088cf56d8806bca6d9db99ab34a1cb5bdeecd99f8049ca9b5e2",
         arm64_linux:  "2359169f5cdd6ba23be7aa4931a7cf44524995e82d5ba6d8410db2d37346e19d",
         x86_64_linux: "754a10077153e7711767edf259c5c288c7ef6de128b6e69df018c1c962cab6af"

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
