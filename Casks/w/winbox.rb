cask "winbox" do
  version "4.0beta33"
  sha256 "20d3122981a95cc048175d576b3f8c2e60a4efcfab9fb8dfe41685b04ac81b51"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox.dmg"
  name "WinBox"
  desc "Administration tool for MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  livecheck do
    url "https://upgrade.mikrotik.com/routeros/winbox/LATEST.#{version.major}"
    regex(/v?(\d+(?:\.\d+)+(?:beta\d+)?)/i)
  end

  depends_on macos: ">= :monterey"

  app "WinBox.app"

  zap trash: [
    "~/Library/Application Support/MikroTik/WinBox",
    "~/Library/Caches/MikroTik/WinBox",
    "~/Library/Saved Application State/my.example.com.savedState",
  ]
end
