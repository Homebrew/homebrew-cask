cask "tempo" do
  version "5.16.0"

  if Hardware::CPU.intel?
    sha256 "51194e8b3b86afe5cd70be08b81cfdfe1297788f47f126fe4e3af5550a7e0b60"

    url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  else
    sha256 "a9d92f463aa00afc4c662b2e2740769cbc2705f7080614ac59f2881fc8afda4c"

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
