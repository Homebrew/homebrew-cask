cask "warp@preview" do
  version "0.2025.09.03.08.11.preview_01"
  sha256 "20dc645679c19b1c9413e7c2f835ad1d3bf5ed816aea6cbefa850c9cf12bdfa0"

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
