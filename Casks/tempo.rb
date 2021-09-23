cask "tempo" do
  version "5.25.1"

  if Hardware::CPU.intel?
    sha256 "841c145f1e5acdd0529263d5854fd34c19f05686a50cdbb87506f257b4b0c8dc"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "ad80b44f141df2db4958c7ac526161dffabb1cf5bf4f9080e313eea4abd98b5b"

    url "https://download.yourtempo.co/release-arm64/Tempo-#{version}.dmg"
  end

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
