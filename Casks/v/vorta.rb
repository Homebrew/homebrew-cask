cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.11.6"
  sha256 arm:   "5e8c736b8f4a96ffd870a8f81bfbda2f68568beaf63c932ff33b9f91f2e84c08",
         intel: "9fa72a71d8cb4b6802cf4e53ecb672738524d1b3eb28c97ed6875839460d27b7"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-v#{version}-#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url "https://borgbase.github.io/vorta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Vorta.app"

  zap trash: "~/Library/Application Support/Vorta"

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
