cask "telavox-flow" do
  version "1.113.0"
  sha256 "f9dbbdc29788d527cebf193686ac417832ac0e1fff8c54954600b457cd1d075c"

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
