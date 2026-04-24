cask "winbox" do
  os linux: "_Linux"

  version "4.1"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox#{os}.dmg"
  on_macos do
    sha256 "45715942a89261d4b14cf5edb13c73d65458c853bdef6d1dfc9da500259cacb2"

    depends_on macos: ">= :monterey"

    app "WinBox.app"

    zap trash: [
      "~/Library/Application Support/MikroTik/WinBox",
      "~/Library/Caches/MikroTik/WinBox",
      "~/Library/Saved Application State/com.mikrotik.winbox.savedState",
    ]
  end
  on_linux do
    sha256 "28d35b661c321f5b618936546b7edf6593292549ed4a9584788dadff39a54d8f"

    depends_on arch: :x86_64

    binary "WinBox", target: "winbox"

    zap trash: "#{ENV.fetch("HOMEBREW_XDG_DATA_HOME", "~/.local/share")}/MikroTik/WinBox"
  end

  name "WinBox"
  desc "Administration tool for MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  livecheck do
    url "https://upgrade.mikrotik.com/routeros/winbox/LATEST.#{version.major}"
    regex(/v?(\d+(?:\.\d+)+((?:beta|rc)\d+)?)/i)
  end
end
