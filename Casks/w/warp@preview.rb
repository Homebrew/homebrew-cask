cask "warp@preview" do
  version "0.2025.10.29.08.12.preview_01"
  sha256 "784a436ea323224b8b57c0b09be9f5591980b7e44522475a92b2020f05a350f4"

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
  depends_on macos: ">= :big_sur"

  app "WarpPreview.app"

  zap trash: [
    "~/Library/Application Support/dev.warp.Warp-Preview",
    "~/Library/Logs/warp_preview.log",
    "~/Library/Preferences/dev.warp.Warp-Preview.plist",
    "~/Library/Saved Application State/dev.warp.Warp-Preview.savedState",
  ]
end
