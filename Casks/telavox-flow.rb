cask "telavox-flow" do
  version "1.120.0"
  sha256 "a12056a681ede03db346d711209b1b1ccf6051ce5ea0a9e8ee995620f6ff4bae"

  url "https://s3.eu-west-2.amazonaws.com/flow-desktop/Telavox-#{version}.dmg",
      verified: "s3.eu-west-2.amazonaws.com/flow-desktop/"
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
