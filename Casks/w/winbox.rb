cask "winbox" do
  version "4.0beta44"
  sha256 "f7a95bf1aef4766aa278a9f936beb5b1983f6950cbcf4b18eb8b1f37cdeb53ed"

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
