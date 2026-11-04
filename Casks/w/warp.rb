cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.11.03.17.08.stable_00"
  sha256 arm:          "8a9d76225e851ef2f5c91fd973ec5425a80c09280d067808dc3ed105f8ad76be",
         intel:        "8a9d76225e851ef2f5c91fd973ec5425a80c09280d067808dc3ed105f8ad76be",
         arm64_linux:  "1a21adf8278ac6c0fe11568dbbd7b079f0f947de46b70e4b8b608934ab88727f",
         x86_64_linux: "14f951c9dc3486651767508639886845a59034df8f0b2534c3ba775a2a826313"

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
