cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.09.09.08.26.stable_02"
  sha256 arm:          "d5591a6ea7721c879f7cd564ff689e8627e68ed7eb67a7e02d8d8226bd83dfd3",
         intel:        "d5591a6ea7721c879f7cd564ff689e8627e68ed7eb67a7e02d8d8226bd83dfd3",
         arm64_linux:  "c8c4cfc51c43e6b115bddb1b976180913d52ea5ae658d35c49ec9473af50ac92",
         x86_64_linux: "cfff20f3e712ae2ee042f0ac86a66ac34d0f8b780a87c27bd5ca6ad7470038e3"

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
