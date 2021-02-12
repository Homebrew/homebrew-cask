cask "vorta" do
  version "0.7.2"
  sha256 "d94b0caad7247a7f501513145fb2b11f36be967db6f88c5355fb0a1f993246a7"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/vorta-#{version}.dmg"
  appcast "https://github.com/borgbase/vorta/releases.atom"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Vorta.app"

  zap trash: "~/Library/Application Support/Vorta"

  caveats <<~EOS
    #{token} requires BorgBackup to run. If you do not need mount support, use the official formula:

      brew install borgbackup

    If you plan on mounting archives using macFUSE, consider using the Tap maintained by the Borg team:

      brew install --cask osxfuse
      brew install borgbackup/tap/borgbackup-fuse
  EOS
end
