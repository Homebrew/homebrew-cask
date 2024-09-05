cask "winbox" do
  version "4.0beta4"
  sha256 "0d15b0b6c25a4b11420d3dc00fc6a754d5ecada26d175501e0c8849ced409d5a"

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
