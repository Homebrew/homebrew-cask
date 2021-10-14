cask "tempo" do
  arch = Hardware::CPU.intel? ? "release" : "release-arm64"

  version "5.27.0"

  url "https://download.yourtempo.co/#{arch}/Tempo-#{version}.dmg"
  if Hardware::CPU.intel?
    sha256 "c300943009a406554914e3f56abea4525b46e231aeff39441fcbc251928ccfc7"
  else
    sha256 "ef8f7c72e9e96dca6a1edf6e10c1d72e0fa6e7cfdb66876b75c00b4c40cce1ea"
  end

  name "Tempo"
  desc "Email client that delivers all email in batches"
  homepage "https://www.yourtempo.co/"

  livecheck do
    url "https://download.yourtempo.co/#{arch}/latest-mac.yml"
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
