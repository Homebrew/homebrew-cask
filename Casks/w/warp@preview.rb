cask "warp@preview" do
  version "0.2026.05.18.05.32.preview_03"
  sha256 "c4c9106567056f0b4b0b980cd0b3f1de4be15d5c12a7260557789964fe64ad9e"

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
  depends_on macos: :big_sur

  app "WarpPreview.app"

  zap trash: [
    "~/Library/Application Support/dev.warp.Warp-Preview",
    "~/Library/Logs/warp_preview.log",
    "~/Library/Preferences/dev.warp.Warp-Preview.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Preview.savedState",
  ]
end
