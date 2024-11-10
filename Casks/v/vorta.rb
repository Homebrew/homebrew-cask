cask "vorta" do
  arch arm: "", intel: "_Intel"

  version "0.10.0"
  sha256 arm:   "3081d63e3e3b174ce5e9b0700a6ed26f406157601adfc4cd0a5028ad03bca020",
         intel: "4df3d955d4b323910a935b6fb542fb35babb669948fa8e21be8d11731e10b27b"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-#{version}#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url :url
    regex(/^Vorta[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
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
cask "vorta" do
  arch arm: "", intel: "_Intel"

  version "0.10.0"
  sha256 arm:   "3081d63e3e3b174ce5e9b0700a6ed26f406157601adfc4cd0a5028ad03bca020",
         intel: "4df3d955d4b323910a935b6fb542fb35babb669948fa8e21be8d11731e10b27b"

  url "https://github.com/borgbase/vorta/releases/download/v#{version}/Vorta-#{version}#{arch}.dmg"
  name "Vorta"
  desc "Desktop Backup Client for Borg"
  homepage "https://github.com/borgbase/vorta"

  livecheck do
    url :url
    regex(/^Vorta[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
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
