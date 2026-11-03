cask "winbox" do
  os macos: ".dmg", linux: "_Linux.zip"

  version "4.5"
  sha256 arm:          "5b74abd05e28698355dd63a52b2d11b9deef06b7f29a4c79c6b91ecc8f8904bf",
         intel:        "5b74abd05e28698355dd63a52b2d11b9deef06b7f29a4c79c6b91ecc8f8904bf",
         x86_64_linux: "5192817089eb91ac5d03edc68661b2603ef81f8098627ab4fd9425b6cc7546a2"

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
