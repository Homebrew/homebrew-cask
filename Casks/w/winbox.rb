cask "winbox" do
  version "4.0rc1"
  sha256 "eaabe13a8b92b2f719c0e673e733473170ae73aca1f1d88acf2b5a964426cc00"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox.dmg"
  name "WinBox"
  desc "Administration tool for MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  livecheck do
    url "https://upgrade.mikrotik.com/routeros/winbox/LATEST.#{version.major}"
    regex(/v?(\d+(?:\.\d+)+((?:beta|rc)\d+)?)/i)
  end

  depends_on macos: ">= :monterey"

  app "WinBox.app"

  zap trash: [
    "~/Library/Application Support/MikroTik/WinBox",
    "~/Library/Caches/MikroTik/WinBox",
    "~/Library/Saved Application State/my.example.com.savedState",
  ]
end
