cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.0"
  sha256 arm:   "e5955830cc32d1b3e908fe6a3205eb65f90c736472885ab8009ecc364dea9b1d",
         intel: "aad9f5007898b192220d7e21a30af132a79aa9fdc039a352d1849f73c7b2b78f"

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
