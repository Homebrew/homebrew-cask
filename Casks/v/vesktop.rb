cask "vesktop" do
  version "1.6.7"
  sha256 "2fbb3e3ec04774b3e7e74bcdb74b88b5d2be65ac728d1036ac17f0583ddc3aeb"

  url "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-universal.dmg"
  name "Vesktop"
  desc "Custom Discord App"
  homepage "https://github.com/Vencord/Vesktop"

  livecheck do
    url "https://github.com/Vencord/Vesktop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "vesktop.app"

  zap trash: [
    "~/Library/Application Support/vesktop",
    "~/Library/Caches/dev.vencord.vesktop",
    "~/Library/Caches/dev.vencord.vesktop.Shipit",
    "~/Library/HTTPStorages/dev.vencord.vesktop",
    "~/Library/Preferences/dev.vencord.vesktop.plist",
    "~/Library/Saved Application State/dev.vencord.vesktop.savedState",
  ]
end
