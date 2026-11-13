cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.11.11.08.17.stable_01"
  sha256 arm:          "8767bc168e167bfb43f7a5d3a66dc19eb576edab22fd8c6a909fa4f152fd85cb",
         intel:        "8767bc168e167bfb43f7a5d3a66dc19eb576edab22fd8c6a909fa4f152fd85cb",
         arm64_linux:  "779c98e451b67c9fc3c3cd6d152c0e0104fcde6264e175795646657830d5aa53",
         x86_64_linux: "de6472061dd3ef78245691c998fc703b20b698536d9bd9940fe3d1059f17e42b"

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
