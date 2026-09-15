cask "winbox" do
  os macos: ".dmg", linux: "_Linux.zip"

  version "4.4"
  sha256 arm:          "bff070fb410191d551c9988d47796ff7d245d276a981b14a90ca6f8698be4a18",
         intel:        "bff070fb410191d551c9988d47796ff7d245d276a981b14a90ca6f8698be4a18",
         x86_64_linux: "49b1faabab55804c491aa2947efbade967815d53df7698cc7876a0c1d636cdc1"

  on_macos do
    depends_on macos: :monterey

    app "WinBox.app"

    zap trash: [
      "~/Library/Application Support/MikroTik/WinBox",
      "~/Library/Caches/MikroTik/WinBox",
      "~/Library/Saved Application State/com.mikrotik.winbox.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    binary "WinBox", target: "winbox"

    zap trash: "#{ENV.fetch("HOMEBREW_XDG_DATA_HOME", "~/.local/share")}/MikroTik/WinBox"
  end

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox#{os}"
  name "WinBox"
  desc "Administration tool for MikroTik RouterOS"
  homepage "https://mikrotik.com/"

  livecheck do
    url "https://upgrade.mikrotik.com/routeros/winbox/LATEST.#{version.major}"
    regex(/v?(\d+(?:\.\d+)+((?:beta|rc)\d+)?)/i)
  end
end
