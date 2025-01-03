cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.10.3"
  sha256 arm:   "78960fd229074fc0d76c4d8d22b078e6b8b6d947a00491ec9880f9abc8f17bb7",
         intel: "b903ea4f122aa04d62c5e6185c4a1f8a414b6c6e97296843bcdeeee6274d04f0"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-v#{version}-#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url "https://borgbase.github.io/vorta/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
