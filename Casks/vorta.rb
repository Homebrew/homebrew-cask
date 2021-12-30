cask "vorta" do
  version "0.8.2"
  sha256 "6b3cff32909da26a92f06d8d9b00d7ed0156ca87a6a2d9907cbb85a7e4dbeddc"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Vorta.app"

  zap trash: "~/Library/Application Support/Vorta"

  caveats <<~EOS
    #{token} requires BorgBackup to run. If you do not need mount support, use the official formula:

      brew install borgbackup

    If you plan on mounting archives using macFUSE, consider using the Tap maintained by the Borg team:

      brew install --cask macfuse
      brew install borgbackup/tap/borgbackup-fuse
  EOS
end
