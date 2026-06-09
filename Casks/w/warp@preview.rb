cask "warp@preview" do
  version "0.2026.06.03.09.49.preview_02"
  sha256 "f23f02cd1523e92c33a563af760f434915a251fcfbc3cfe844c6af21bf2a1f9b"

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
