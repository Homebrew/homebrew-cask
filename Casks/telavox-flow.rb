cask "telavox-flow" do
  version "1.133.1"
  sha256 "49d43ad9e8cb9665775ae6b0ba4aa2c290eedfcb7229277fa76c57a57aa7677f"

  url "https://flow-desktop.s3.eu-west-2.amazonaws.com/Telavox-#{version}.dmg",
      verified: "flow-desktop.s3.eu-west-2.amazonaws.com/"
  name "Telavox Flow"
  desc "Communication and collaboration platform"
  homepage "https://telavox.com/en/apps/"

  livecheck do
    url "https://deopappmanager.telavox.com/flow/download/mac/latest"
    strategy :header_match
  end

  auto_updates true

  app "Telavox.app"

  zap trash: [
    "~/Library/Application Support/Flow",
    "~/Library/Logs/Flow",
    "~/Library/Saved Application State/telavox.flow.desktop.savedState",
  ]
end
