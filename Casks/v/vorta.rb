cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.12.2"
  sha256 arm:   "2a377fa5e04068cdc4f8c9316e34046cc1bae11acca4e8daf20e4ca7fdb8723d",
         intel: "4b260b07af23eb807ad239936c9848ca62bb1be85c654e23398dddb6b73fa5b5"

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
