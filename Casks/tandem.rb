cask "tandem" do
  version "1.8.818"

  if Hardware::CPU.intel?
    sha256 "228971e3798e3e658c05fbd04e01991e1f452087c9f22ecea708446f6592cbf0"
    url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version}-x64.dmg",
        verified: "download.todesktop.com/200527auaqaacsy/"
  else
    sha256 "5a08640944af10a4191f6649604cfae6beb942e0b0a7a75ddc401ba0ec09327d"
    url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version}-arm64.dmg",
        verified: "download.todesktop.com/200527auaqaacsy/"
  end

  name "Tandem"
  desc "Virtual office for remote teams"
  homepage "https://tandem.chat/"

  livecheck do
    url "https://download.todesktop.com/200527auaqaacsy/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Tandem.app"

  zap trash: [
    "~/Library/Application Support/Caches/tandem-updater",
    "~/Library/Application Support/Tandem",
    "~/Library/Caches/tandem.app",
    "~/Library/Caches/tandem.app.ShipIt",
    "~/Library/Logs/Tandem",
    "~/Library/Preferences/ByHost/tandem.app.ShipIt.*.plist",
    "~/Library/Preferences/tandem.app.plist",
    "~/Library/Saved Application State/tandem.app.savedState",
  ]
end
