cask "warp-agent-cli" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.2026.08.26.17.59.stable_01"
  sha256 arm:          "6493bed43df2bf65db1c68794af33052dcee7c34c7f74ee2d8ebdd1496b0a95d",
         intel:        "dac53bef9b9090c22768690665b440e02fefea8174a876215a9c010a46bd2eb3",
         arm64_linux:  "ebe3ff0c7dbbbda4e3cdbdcfae019b732495922bfcb48343c090f4a828ed6e31",
         x86_64_linux: "a8e36dd5160bc16a9358341061b0d6677b702fccf65c020f1d700049558cc757"

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
