cask "tuhmo" do
  version "0.1.6"
  sha256 "a7124e3507fd59b28193ae05f2330a45cb4e9dab71bf7153f203f0c52170d8f0"

  url "https://download.tuhmo.com/releases/#{version}/Tuhmo-#{version}-mac.dmg"
  name "Tuhmo"
  desc "Clients, projects, tasks, documents and invoices in one workspace"
  homepage "https://tuhmo.com/"

  livecheck do
    url "https://download.tuhmo.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tuhmo.app"

  zap trash: [
    "~/Library/Application Support/Tuhmo",
    "~/Library/Caches/com.tuhmo.desktop",
    "~/Library/Caches/com.tuhmo.desktop.ShipIt",
    "~/Library/Caches/tuhmo-desktop-updater",
    "~/Library/Preferences/com.tuhmo.desktop.plist",
  ]
end
