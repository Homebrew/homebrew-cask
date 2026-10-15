cask "warp@preview" do
  version "0.2026.10.14.08.27.preview_01"
  sha256 "6898f4ba2d7b58ba216f2fe343150d138bb6621ce8c5b50fde09a33b64215146"

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
