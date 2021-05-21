cask "tempo" do
  version "5.15.0"

  if Hardware::CPU.intel?
    sha256 "97d01cc83d670f01afeb52816f84a98125a398fccf8492398cb7fb27e77e18b4"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "0e2bf7aed66b78afc4069f08f025adbe041de1772cc3ae6293c83366cabb9945"

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
