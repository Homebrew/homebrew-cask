cask "telavox-flow" do
  version "1.106.2"
  sha256 "225231fab993866b6d4ec78f63a4218e6effc0c28b4af805befb88f0a78f16e9"

  # s3.eu-west-2.amazonaws.com/flow-desktop/ was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/flow-desktop/Telavox-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://deopappmanager.telavox.com/flow/download/mac/latest"
  name "Telavox Flow"
  homepage "https://telavox.com/en/apps/"

  auto_updates true

  app "Telavox.app"

  zap trash: [
    "~/Library/Application Support/Flow",
    "~/Library/Logs/Flow",
    "~/Library/Saved Application State/telavox.flow.desktop.savedState",
  ]
end
