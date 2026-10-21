cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.10.14.08.27.stable_02"
  sha256 arm:          "9e24592d1b9ac614615f73cd3e5e281d64b10cc73dda4ffce01441e16b358fce",
         intel:        "9e24592d1b9ac614615f73cd3e5e281d64b10cc73dda4ffce01441e16b358fce",
         arm64_linux:  "a1603ae89c3cc5f636b5490a9f1b7984830f97a8e1a64c595dfe27d2eff3d672",
         x86_64_linux: "fe0c2bdbb469c8ddb3e23970c8d99597dc48048daa08d6fbbb82e12e632b52e2"

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

  url "https://app.warp.dev/download/brew?version=v#{version}&package=#{os}"
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
