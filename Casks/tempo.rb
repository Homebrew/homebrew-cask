cask "tempo" do
  version "5.14.0"
  sha256 "4683ab958633cbe5054dc7a86166d8752f69e17eeb7bd65deb73bf84195f87aa"

  url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  name "Tempo"
  desc "Email client that delivers all email in batches"
  homepage "https://www.yourtempo.co/"

  livecheck do
    url "https://download.yourtempo.co/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tempo.app"

  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/Logs/Tempo",
    "~/Library/Preferences/com.founders.mial.plist",
    "~/Library/Saved Application State/com.founders.mial.savedState",
  ]
end
