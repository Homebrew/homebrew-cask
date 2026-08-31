cask "warp" do
  os macos: "dmg", linux: on_arch_conditional(arm: "appimage_arm64", intel: "appimage")

  version "0.2026.08.26.17.59.stable_01"

  on_macos do
    sha256 "606f174aa36d93c3c95e666d576d3e347c9a30474c717753be03bb2ca060aae1"

    auto_updates true
    depends_on macos: :big_sur

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

    sha256 arm64_linux:  "b1e5775dce25b42e95088ace14ac053c6154be869deaf0aac387628dd1d92470",
           x86_64_linux: "16f060c1faa2de16bdbdc94b35b6eb2e7cd0a6f8987ddcae6814dc50961c9ec7"

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
