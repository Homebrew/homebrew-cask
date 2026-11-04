cask "warp@preview" do
  version "0.2026.11.03.17.07.preview_00"
  sha256 "8145ad17810b11d127e1cebb7d7063439e0191cb1f438af1245b7633f5da4604"

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
