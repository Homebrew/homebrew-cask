cask "telavox-flow" do
  version "1.124.1"
  sha256 "026a568b18722df976683087c4414aa8e3ebbf381cdacffa0a02726c951c1ded"

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
