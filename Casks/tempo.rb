cask "tempo" do
  version "5.23.1"

  if Hardware::CPU.intel?
    sha256 "bf7541f1822e87a46a11a88bb8c1a8295815c00384abf9d6f2cacc878eb3e1ef"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "98281d991fbd48a74f5a51a7acee5073341cc976c0737a346ff9aebdc55e2171"

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
