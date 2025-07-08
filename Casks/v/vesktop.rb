cask "vesktop" do
  version "1.5.8"
  sha256 "a0bb9b827e46a0c802a956bd6f16829e6a88022b53ededadfc55cb129393b788"

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
