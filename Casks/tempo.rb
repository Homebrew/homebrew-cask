cask "tempo" do
  version "5.27.0"

  if Hardware::CPU.intel?
    sha256 "c300943009a406554914e3f56abea4525b46e231aeff39441fcbc251928ccfc7"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "ef8f7c72e9e96dca6a1edf6e10c1d72e0fa6e7cfdb66876b75c00b4c40cce1ea"

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
