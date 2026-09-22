cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.09.16.08.27.stable_02"
  sha256 arm:          "826ee2b1a5103a174cb8be4447d1b7439e50f3901a74e4f748c833e567a586b1",
         intel:        "826ee2b1a5103a174cb8be4447d1b7439e50f3901a74e4f748c833e567a586b1",
         arm64_linux:  "43b7efd5b2c8a88e63b331eacf6c6f2df05d732482a027af71329b1f417e759c",
         x86_64_linux: "dde0fb26c7d50e7206784cbfe52a52cda197dccda4e06e41c2d14f26aef7ef6a"

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
