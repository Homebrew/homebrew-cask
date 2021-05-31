cask "tempo" do
  version "5.18.1"

  if Hardware::CPU.intel?
    sha256 "8676629ffe2d0834b96d4bb12c41aad539cd2c0058865f8e9ff17242c675823f"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "758a9e1e28c7e4078a00bcafffd57448f105ba2ba45a09a1a337fc8f5381b454"

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
