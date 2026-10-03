cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.09.30.08.29.stable_01"
  sha256 arm:          "35718b4ce8749dce96e763605b8c02517643524f46590c8d7861493fa15c9e9c",
         intel:        "35718b4ce8749dce96e763605b8c02517643524f46590c8d7861493fa15c9e9c",
         arm64_linux:  "9cc95cffac199b2168c4ca0c7ee4af995499f4bb508680565a6269cf1df2e060",
         x86_64_linux: "7ec2b8aec662eda14ba3f5bd5f9f4365d8aca9ed08232cc27c0832660af02458"

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
