cask "tunarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.14"
  sha256 arm:   "71993631fd67c7061d90bda1644b5d373c40d3e51910a028707deeffbfe00427",
         intel: "98fbac88ac84de36389b87e5f0714624efdeadebaf83dc59763dbbe3e90bf696"

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
