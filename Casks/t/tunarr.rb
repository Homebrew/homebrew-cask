cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.3"
  sha256 arm:   "2daf1948cd349a9302ae4f35c5b434cf410daacfff8b1a932292ecdb9474adb0",
         intel: "89a525948a4bdd640af77e26e75df629e70d44f857ebb99ffdcefff120936285"

  url "https://github.com/chrisbenincasa/tunarr/releases/download/v#{version}/Tunarr-v#{version}-macos-#{arch}.dmg"
  name "tunarr"
  desc "Create your own live TV channels from media on Plex, Jellyfin, Emby"
  homepage "https://tunarr.com/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Tunarr[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg$/i)
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

  depends_on macos: :ventura

  app "Tunarr.app"

  zap trash: [
    "~/.cache/tunarr",
    "~/Library/Preferences/tunarr",
  ]
end
