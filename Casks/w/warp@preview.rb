cask "warp@preview" do
  version "0.2026.11.11.08.17.preview_01"
  sha256 "402bbdffca292d39e428ccbca7e92cab0f89dfe569110e3e6ea5a2a146a4a00b"

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
