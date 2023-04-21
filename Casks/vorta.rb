cask "vorta" do
  version "0.8.11"
  sha256 "4dbbc7bd927a0f73985455f13221dc391a9af5cd63f3b4fee00149c12f2079f9"

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
