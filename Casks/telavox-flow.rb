cask "telavox-flow" do
  version "1.112.1"
  sha256 "1b3f76135b678eb0a25438541a4ce33b010eac1415c18b02e734fac9c5a87bb2"

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
