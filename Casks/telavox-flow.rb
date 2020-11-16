cask "telavox-flow" do
  version "1.110.2"
  sha256 "7b3200af31dbd3728eab8366e773db162225fd309ec6f99bbcc323d937251ca8"

  # s3.eu-west-2.amazonaws.com/flow-desktop/ was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/flow-desktop/Telavox-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://deopappmanager.telavox.com/flow/download/mac/latest"
  name "Telavox Flow"
  desc "Communication and collaboration platform"
  homepage "https://telavox.com/en/apps/"

  auto_updates true

  app "Telavox.app"

  zap trash: [
    "~/Library/Application Support/Flow",
    "~/Library/Logs/Flow",
    "~/Library/Saved Application State/telavox.flow.desktop.savedState",
  ]
end
