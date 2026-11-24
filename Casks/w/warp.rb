cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.11.18.08.17.stable_05"
  sha256 arm:          "56c7caf4137c41adad30229601aaacd26a19b5a6cee59f82b5ef38381fa41883",
         intel:        "56c7caf4137c41adad30229601aaacd26a19b5a6cee59f82b5ef38381fa41883",
         arm64_linux:  "b265fd4fbffaa838e6bd2040293899abf9d3ff233e6dc0a111c0968fb3d62e0e",
         x86_64_linux: "b562e1e8e03b836f20c0e868d75f89dd4856ec959dfce338bf1d94acf82c2558"

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
