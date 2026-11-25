cask "warp@preview" do
  version "0.2026.11.18.08.17.preview_01"
  sha256 "4b158e1eb9878d8a579606286dfaf61173b51a23c9a93158dda044462c13ff64"

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
