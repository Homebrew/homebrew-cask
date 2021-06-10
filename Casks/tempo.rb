cask "tempo" do
  version "5.19.0"

  if Hardware::CPU.intel?
    sha256 "57efd532207bf73cd8aec6118f14d533695c7a137fe251e5775a9a9040741acf"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "3f155445a6b31943d8bd9aae278d625ad2501883dc7da100d6635882336744bd"

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
