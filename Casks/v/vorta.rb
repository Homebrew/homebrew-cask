cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.11.2"
  sha256 arm:   "e3a1204e31db5ba7938b7f552f03e64bb2c43c386d60f060d8a9110938ad1079",
         intel: "b99602668ce323c55330df35655deb0cde2a570aa9554ab954d959a5bed7778b"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-v#{version}-#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url "https://borgbase.github.io/vorta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

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
