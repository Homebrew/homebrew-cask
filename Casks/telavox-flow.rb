cask "telavox-flow" do
  version "1.130.1"
  sha256 "0337bf1ac90878ff7992dbe619d78052b51c0df8defa5c013d0d97af22564a9d"

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
