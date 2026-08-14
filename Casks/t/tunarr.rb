cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.11"
  sha256 arm:   "0e508f23a29ded340713ef54438ce43947899afed1f4a2c5beb45ff51ffdaa2a",
         intel: "15f798739b75060e920cad052cf0680f9be4a070b83dd415137850e1fb2a5dca"

  url "https://github.com/chrisbenincasa/tunarr/releases/download/v#{version}/Tunarr-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/chrisbenincasa/tunarr/"
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
