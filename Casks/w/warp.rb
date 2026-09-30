cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.09.23.14.34.stable_01"
  sha256 arm:          "c9456945c8f01471dbfbe26681be0cd411b08fa2a90931e36371f26e86557532",
         intel:        "c9456945c8f01471dbfbe26681be0cd411b08fa2a90931e36371f26e86557532",
         arm64_linux:  "c4e11bb11bb490942d6fe0033fe2ad4dd028c4d1aede75ba7c951eb4b0faaf10",
         x86_64_linux: "5a80d6e7832745544272e1f5e57c55cbbb25dda0e8e6f2314904b71b174716b4"

  on_macos do
    auto_updates true

    app "Warp.app"

    zap trash: [
      "~/.warp",
      "~/Library/Application Support/dev.warp.Warp-Stable",
      "~/Library/Logs/warp.log*",
      "~/Library/Preferences/dev.warp.Warp-Stable.plist",
      "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    app_image "Warp-#{arch}.AppImage", target: "Warp.AppImage"

    zap trash: [
      "~/.cache/warp-terminal",
      "~/.config/warp-terminal",
      "~/.local/share/warp-terminal",
      "~/.local/state/warp-terminal",
      "~/.warp",
    ]
  end

  url "https://app.warp.dev/download?version=v#{version}&package=#{os}"
  name "Warp"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/terminal"

  livecheck do
    url "https://releases.warp.dev/channel_versions.json"
    strategy :json do |json|
      json.dig("stable", "version")&.delete_prefix("v")
    end
  end
end
