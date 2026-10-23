cask "warp@preview" do
  version "0.2026.10.21.08.26.preview_02"
  sha256 "21a582d536eaa1c835eb295468dfe5f351c8cc5cc0a23e9568118f09f80a7e5c"

  url "https://releases.warp.dev/preview/v#{version}/WarpPreview.dmg"
  name "Warp Preview"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/terminal"

  livecheck do
    url "https://releases.warp.dev/channel_versions.json"
    strategy :json do |json|
      json.dig("preview", "version")&.delete_prefix("v")
    end
  end

  auto_updates true
  depends_on :macos

  app "WarpPreview.app"

  zap trash: [
    "~/.warp",
    "~/Library/Application Scripts/2BBY89MBSN.dev.warp",
    "~/Library/Application Support/dev.warp.Warp-Preview",
    "~/Library/Caches/dev.warp.Warp-Preview",
    "~/Library/Group Containers/2BBY89MBSN.dev.warp",
    "~/Library/Logs/oz/warp.log*",
    "~/Library/Logs/warp_preview.log*",
    "~/Library/Preferences/dev.warp.Warp-Preview.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Preview.savedState",
  ]
end
