cask "warp@preview" do
  version "0.2025.06.06.22.47.preview_05"
  sha256 "4e896328ffa925ad8724c4c14c3d37a6796a288875f30c090971f5dcdfc66729"

  url "https://releases.warp.dev/preview/v#{version}/WarpPreview.dmg"
  name "Warp Preview"
  desc "Rust-based terminal"
  homepage "https://www.warp.dev/"

  livecheck do
    url "https://releases.warp.dev/channel_versions.json"
    strategy :json do |json|
      json.dig("preview", "version")&.delete_prefix("v")
    end
  end

  auto_updates true

  app "WarpPreview.app"

  zap trash: [
    "~/Library/Application Support/dev.warp.Warp-Preview",
    "~/Library/Logs/warp_preview.log",
    "~/Library/Preferences/dev.warp.Warp-Preview.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Preview.savedState",
  ]
end
