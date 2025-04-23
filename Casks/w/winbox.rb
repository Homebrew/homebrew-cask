cask "winbox" do
  version "4.0beta19"
  sha256 "286e0d56768b497fbf83b3b4a7ce46713c539c5076c876b1a184824a7bb73173"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox.dmg"
  name "WinBox"
  desc "Administration tool for MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  livecheck do
    url "https://upgrade.mikrotik.com/routeros/winbox/LATEST.#{version.major}"
    regex(/v?(\d+(?:\.\d+)+(?:beta\d+)?)/i)
  end

  depends_on macos: ">= :big_sur"

  app "WinBox.app"

  zap trash: [
    "~/Library/Application Support/MikroTik/WinBox",
    "~/Library/Caches/MikroTik/WinBox",
    "~/Library/Saved Application State/my.example.com.savedState",
  ]
end
