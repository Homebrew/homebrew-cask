cask "vorta" do
  arch arm: "arm", intel: "intel"

  version "0.10.1"
  sha256 arm:   "a50808b82f8a7f02e17852b5d537bd7bd4d4b3f04442a9b7409c9bc58f4fceaa",
         intel: "d1586c9c36ec40190ec73f2a8e808685639db69ff83b5c91c120dbaec1a47dbf"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-v#{version}-#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url :url
    regex(/^Vorta[._-]v?(\d+(?:\.\d+)+)(:?[._-]#{arch})?\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
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
