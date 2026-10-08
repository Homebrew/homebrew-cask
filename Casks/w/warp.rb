cask "warp" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2026.10.07.08.29.stable_00"
  sha256 arm:          "8ff1a7ca3a6ce6e79b9c693741e9f00b0aa13403fc48c05c57ca404a9f604fac",
         intel:        "8ff1a7ca3a6ce6e79b9c693741e9f00b0aa13403fc48c05c57ca404a9f604fac",
         arm64_linux:  "61196e4e823c7963a206d1432608678408cb524be572998538b7cc66e0b4ae07",
         x86_64_linux: "4e2f005f8a92b6cc96b96766f54703f4fff847552a38afe7dbb375ea2727e55f"

  on_macos do
    auto_updates true

    app "Warp.app"

    zap trash: [
      "~/.warp",
      "~/Library/Application Scripts/2BBY89MBSN.dev.warp",
      "~/Library/Application Support/dev.warp.Warp-Stable",
      "~/Library/Caches/dev.warp.Warp-Stable",
      "~/Library/Group Containers/2BBY89MBSN.dev.warp",
      "~/Library/Logs/oz/warp.log*",
      "~/Library/Logs/warp.log*",
      "~/Library/Preferences/dev.warp.Warp-Stable.plist",
      "~/Library/Saved Application State/dev.warp.Warp-Stable.savedState",
    ]
  end
  on_linux do
    app_image "Warp-#{arch}.AppImage", target: "Warp.AppImage"

    zap trash: [
      "~/.cache/warp-terminal",
      "~/.config/warp-terminal",
      "~/.local/share/warp-terminal",
      "~/.local/state/warp-terminal",
      "~/.warp",
    ]
  end

  url "https://releases.warp.dev/stable/v#{version}/#{on_system_conditional(macos: "Warp.dmg", linux: "Warp-#{arch}.AppImage")}"
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
