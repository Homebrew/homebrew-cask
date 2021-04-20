cask "telavox-flow" do
  version "1.118.1"
  sha256 "5cf868ae0eb85085d6f344874b0bcd5c39e46f24779eacd215f68716cc2992af"

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
