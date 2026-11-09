cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.12.0"
  sha256 arm:   "88b742c7b43d88700218e2ea98af0582b38a086095403827bc693842e4658daf",
         intel: "47bc7191c5f32b50f4b6752c011790efef417bc3e2931bf59dad173d256cf21a"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-v#{version}-#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url "https://borgbase.github.io/vorta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Vorta.app"

  zap trash: [
    "~/Library/Application Support/Vorta",
    "~/Library/Caches/com.borgbase.client.macos",
    "~/Library/Caches/Vorta",
    "~/Library/HTTPStorages/com.borgbase.client.macos",
    "~/Library/Logs/Vorta",
    "~/Library/Preferences/com.borgbase.client.macos.plist",
  ]

  caveats <<~EOS
    #{token} requires BorgBackup to run. If you do not need mount support, use
    the official formula:

      brew install borgbackup

    If you plan on mounting archives using macFUSE, consider using the Tap
    maintained by the Borg team:

      brew install --cask macfuse
      brew install borgbackup/tap/borgbackup-fuse
  EOS
end
