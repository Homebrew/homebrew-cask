cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.12.1"
  sha256 arm:   "b65da5b0fc3dcb1792897eaf2dad62e0b2cbc1db4a577ff39668b28c7ae2600b",
         intel: "3626134e73834f8b390afdbfc841bca6deea5e4a1b410267e357fc5ad51a31c0"

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
