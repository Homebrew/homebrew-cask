cask "winbox" do
  os macos: ".dmg", linux: "_Linux.zip"

  version "4.3"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox#{os}"
  on_macos do
    sha256 "5681d03e32133858b3dc541c78c1bae38cb3355b5fd98326ac725e0bd8bab570"

    depends_on macos: :monterey

    app "WinBox.app"

    zap trash: [
      "~/Library/Application Support/MikroTik/WinBox",
      "~/Library/Caches/MikroTik/WinBox",
      "~/Library/Saved Application State/com.mikrotik.winbox.savedState",
    ]
  end
  on_linux do
    sha256 "573600ac24df38a7a06ea4318b12754247eec4b54c6c90b0a57100d676787a4c"

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
