cask "telavox-flow" do
  version "1.121.0"
  sha256 "471a41b8fd84b0a6132efdacce577f21eb68aa9c2607a1a2e6fef879a554ce1c"

  url "https://flow-desktop.s3.amazonaws.com/Telavox-#{version}.dmg",
      verified: "flow-desktop.s3.amazonaws.com/"
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
