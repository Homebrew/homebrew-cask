cask "vesktop" do
  version "1.6.0"
  sha256 "34a6629e03f53e2a1cb1167610f235f268c535ce41647fa7b8c84509f31f811c"

  url "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-universal.dmg"
  name "Vesktop"
  desc "Custom Discord App"
  homepage "https://github.com/Vencord/Vesktop"

  livecheck do
    url "https://github.com/Vencord/Vesktop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
