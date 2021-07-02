cask "telavox-flow" do
  version "1.123.0"
  sha256 "7a18ebde9e8b4fe90a3c3f407b873b3e6e42c77b9c9a1cadcbe3972f67d9c761"

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
