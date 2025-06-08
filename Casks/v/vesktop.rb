cask "vesktop" do
  version "1.5.7"
  sha256 "ef697fcf2ca40914b784eca700af3f5a41467f4eccd8680d3055ac6add94fdd7"

  url "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-universal.dmg"
  name "Vesktop"
  desc "Custom Discord App"
  homepage "https://github.com/Vencord/Vesktop"

  livecheck do
    url "https://github.com/Vencord/Vesktop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Vesktop.app"

  zap trash: [
    "~/Library/Application Support/vesktop",
    "~/Library/Caches/dev.vencord.vesktop",
    "~/Library/Caches/dev.vencord.vesktop.Shipit",
    "~/Library/HTTPStorages/dev.vencord.vesktop",
    "~/Library/Preferences/dev.vencord.vesktop.plist",
    "~/Library/Saved Application State/dev.vencord.vesktop.savedState",
  ]
end
