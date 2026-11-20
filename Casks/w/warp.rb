cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.11.18.08.17.stable_03"
  sha256 arm:          "7d6df13b32c10a5fa388f66f2b81f7ec8e8d152d005b9cd6854a10b73c916e28",
         intel:        "7d6df13b32c10a5fa388f66f2b81f7ec8e8d152d005b9cd6854a10b73c916e28",
         arm64_linux:  "6e9add7f3b165d74b320a9d921c2d9afa2ea504b1e61a12c4ff478e89c095745",
         x86_64_linux: "972543244c8a88c064a1eabfd7b8746ed90f799b0fe225e9564bebd8c47435b7"

  on_macos do
    auto_updates true

    app "Warp.app"

    zap trash: [
      "~/.warp",
      "~/Library/Application Scripts/2BBY89MBSN.dev.warp",
      "~/Library/Application Support/dev.warp.Warp-Stable",
      "~/Library/Caches/dev.warp.Warp-Stable",
      "~/Library/Group Containers/2BBY89MBSN.dev.warp",
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
