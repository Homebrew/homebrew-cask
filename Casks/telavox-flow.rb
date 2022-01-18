cask "telavox-flow" do
  version "1.135.2"
  sha256 "3c3d2d2f55e235901f1d171246cecff6f435bee310eb7e22547ae63e9ca182f4"

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
