cask "tempo" do
  version "5.22.0"

  if Hardware::CPU.intel?
    sha256 "0fad111c919a9bb8dd67adfea47a2c1165465e61890baebd0ac2bf5b0ad11430"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "37ba9e625b3a9d8d83b67b565422b6a081a65087d084bb099f74267ee95eecb6"

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
