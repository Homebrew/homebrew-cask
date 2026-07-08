cask "winbox" do
  os macos: ".dmg", linux: "_Linux.zip"

  version "4.2"

  url "https://download.mikrotik.com/routeros/winbox/#{version}/WinBox#{os}"
  on_macos do
    sha256 "ac405d90b87dfbb833765438b88fd2742016c169c6dad0503d64dd19c1137ec2"

    depends_on macos: :monterey

    app "WinBox.app"

    zap trash: [
      "~/Library/Application Support/MikroTik/WinBox",
      "~/Library/Caches/MikroTik/WinBox",
      "~/Library/Saved Application State/com.mikrotik.winbox.savedState",
    ]
  end
  on_linux do
    sha256 "86dc95c2e0ac091c2f030b1d9dbcfe67713d4e4ea41fc5347da183a3d0afc95a"

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
