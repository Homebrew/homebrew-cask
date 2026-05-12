cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.11.5"
  sha256 arm:   "c232014f7f7928aec8ccd98889588eda2775c98322502b391e0efb10fb290f4f",
         intel: "b00b3112ef02868360a31c337f3f8b4b95fdee587b880c08b349577bf4159311"

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
